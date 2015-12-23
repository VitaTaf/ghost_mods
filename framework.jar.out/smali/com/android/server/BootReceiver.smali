.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final LOG_SIZE:I = 0x3e800

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

.field private static sTombstoneObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/DropBoxManager;
    .param p1, "x1"    # Landroid/content/SharedPreferences;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static/range {p0 .. p5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string v13, "BootReceiver"

    const-string v14, "Copying audit failures to DropBox"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v3, Ljava/io/File;

    const-string v13, "/proc/last_kmsg"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 321
    .local v4, "fileTime":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-gtz v13, :cond_2

    .line 322
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    const-string v13, "/sys/fs/pstore/console-ramoops"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 326
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_0

    .line 328
    if-eqz p1, :cond_3

    .line 329
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 330
    .local v8, "lastTime":J
    cmp-long v13, v8, v4

    if-eqz v13, :cond_0

    .line 333
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-interface {v13, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    .end local v8    # "lastTime":J
    :cond_3
    const-string v13, "[[TRUNCATED]]\n"

    move/from16 v0, p3

    invoke-static {v3, v0, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "log":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v10, v2, v6

    .line 339
    .local v10, "line":Ljava/lang/String;
    const-string v13, "audit"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 340
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 343
    .end local v10    # "line":Ljava/lang/String;
    :cond_5
    const-string v13, "BootReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copied "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " worth of audits to DropBox"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    return-void
.end method

.method private static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "footers"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 296
    if-eqz p0, :cond_0

    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 300
    .local v2, "fileTime":J
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 302
    if-eqz p1, :cond_2

    .line 303
    invoke-interface {p1, p4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 304
    .local v4, "lastTime":J
    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 307
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    .end local v4    # "lastTime":J
    :cond_2
    const-string v1, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to DropBox ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "[[TRUNCATED]]\n"

    invoke-static {v0, p5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p6, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 18
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const/16 v17, 0x0

    .line 350
    .local v17, "upload_needed":Z
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string v2, "BootReceiver"

    const-string v3, "Checking for fsck errors"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v9, Ljava/io/File;

    const-string v2, "/dev/fscklogs/log"

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 355
    .local v10, "fileTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_0

    .line 357
    const-string v2, "[[TRUNCATED]]\n"

    move/from16 v0, p3

    invoke-static {v9, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 358
    .local v15, "log":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/String;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v14, v8, v12

    .line 360
    .local v14, "line":Ljava/lang/String;
    const-string v2, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    const/16 v17, 0x1

    .line 366
    .end local v14    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v17, :cond_3

    .line 367
    const-string v5, "/dev/fscklogs/log"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 359
    .restart local v14    # "line":Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private static getPowerupReason()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 376
    new-instance v1, Ljava/io/File;

    const-string v5, "/proc/bootinfo"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-object v4

    .line 379
    :cond_1
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "bootinfo":Ljava/lang/String;
    const-string v5, "POWERUPREASON\\s+:\\s+([0-9xXa-fA-F]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 381
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 382
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .locals 27
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v6, "dropbox"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DropBoxManager;

    .line 104
    .local v2, "db":Landroid/os/DropBoxManager;
    const-string v6, "log_files"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 105
    .local v3, "prefs":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Build: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Hardware: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Revision: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ro.revision"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Born_On_Date: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ro.manufacturedate"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Bootloader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Radio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Kernel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/version"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    const-string v9, "...\n"

    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "headers":Ljava/lang/String;
    const-string/jumbo v6, "ro.boot.bootreason"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "bootReason":Ljava/lang/String;
    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    move-result-object v24

    .line 122
    .local v24, "recovery":Ljava/lang/String;
    if-eqz v24, :cond_0

    if-eqz v2, :cond_0

    .line 123
    const-string v6, "SYSTEM_RECOVERY_LOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    const-string v5, ""

    .line 127
    .local v5, "lastKmsgFooter":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Boot info:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Last boot reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    :cond_1
    const/16 v18, 0x0

    .line 136
    .local v18, "needClearRestart":Z
    const-string/jumbo v6, "ro.runtime.firstboot"

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    .line 137
    const-string v6, "encrypted"

    const-string/jumbo v7, "ro.crypto.state"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "trigger_restart_min_framework"

    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 166
    :cond_2
    :goto_0
    const-string v6, "/proc/last_kmsg"

    const v7, -0x3e800

    const-string v8, "SYSTEM_LAST_KMSG"

    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    const-string v6, "/sys/fs/pstore/console-ramoops"

    const v7, -0x3e800

    const-string v8, "SYSTEM_LAST_KMSG"

    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    const-string v9, "/cache/recovery/log"

    const v10, -0x3e800

    const-string v11, "SYSTEM_RECOVERY_LOG"

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    const-string v9, "/cache/recovery/last_kmsg"

    const v10, -0x3e800

    const-string v11, "SYSTEM_RECOVERY_KMSG"

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    const-string v9, "/data/dontpanic/apanic_console"

    const v10, -0x3e800

    const-string v11, "APANIC_CONSOLE"

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    const-string v9, "/data/dontpanic/apanic_threads"

    const v10, -0x3e800

    const-string v11, "APANIC_THREADS"

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    const v6, -0x3e800

    const-string v7, "SYSTEM_AUDIT"

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    const v6, -0x3e800

    const-string v7, "SYSTEM_FSCK"

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    const-string/jumbo v6, "persist.sys.reboot_reason"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 184
    .local v23, "reason":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 185
    const-string/jumbo v6, "persist.sys.reboot_reason"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subtype: panic_reboot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, "h":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v6, "SYSTEM_RESTART"

    invoke-virtual {v2, v6, v14}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v14    # "h":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x1

    .line 215
    .end local v23    # "reason":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v18, :cond_e

    .line 217
    const-string/jumbo v6, "sys.runtime.restart.times"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_5
    :goto_2
    sget-object v6, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v26

    .line 259
    .local v26, "tombstoneFiles":[Ljava/io/File;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-eqz v26, :cond_11

    move-object/from16 v0, v26

    array-length v6, v0

    if-ge v15, v6, :cond_11

    .line 260
    aget-object v6, v26, v15

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 261
    aget-object v6, v26, v15

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const v10, 0x3e800

    const-string v11, "SYSTEM_TOMBSTONE"

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 143
    .end local v15    # "i":I
    .end local v26    # "tombstoneFiles":[Ljava/io/File;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 144
    .local v20, "now":Ljava/lang/String;
    const-string/jumbo v6, "ro.runtime.firstboot"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v2, :cond_2

    .line 148
    move-object v14, v4

    .line 149
    .restart local v14    # "h":Ljava/lang/String;
    const-string v6, ""

    const-string/jumbo v7, "ro.boot.console"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bootmode: serialconsole\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 152
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Secure Hardware: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ro.boot.secure_hardware"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 155
    invoke-static {}, Lcom/android/server/BootReceiver;->getPowerupReason()Ljava/lang/String;

    move-result-object v22

    .line 156
    .local v22, "pwr":Ljava/lang/String;
    if-eqz v22, :cond_9

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Powerup Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 160
    :cond_9
    const-string v6, "SYSTEM_BOOT"

    invoke-virtual {v2, v6, v14}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v14    # "h":Ljava/lang/String;
    .end local v20    # "now":Ljava/lang/String;
    .end local v22    # "pwr":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "sys.sf.restart"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 194
    const-string/jumbo v6, "sys.sf.restart"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subtype: sf_restart\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 196
    .restart local v14    # "h":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v6, "SYSTEM_RESTART"

    invoke-virtual {v2, v6, v14}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    .end local v14    # "h":Ljava/lang/String;
    :cond_b
    const-string/jumbo v6, "sys.wd.restart"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    .line 200
    const-string/jumbo v6, "sys.wd.restart"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subtype: wd_restart\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 202
    .restart local v14    # "h":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v6, "SYSTEM_RESTART"

    invoke-virtual {v2, v6, v14}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    .end local v14    # "h":Ljava/lang/String;
    :cond_c
    const-string/jumbo v6, "sys.frp.restart"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 206
    const-string/jumbo v6, "sys.frp.restart"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subtype: frp_breach\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 208
    .restart local v14    # "h":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v6, "SYSTEM_RESTART"

    invoke-virtual {v2, v6, v14}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    .end local v14    # "h":Ljava/lang/String;
    :cond_d
    if-eqz v2, :cond_4

    const-string v6, "SYSTEM_RESTART"

    invoke-virtual {v2, v6, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :cond_e
    const-string/jumbo v6, "sys.runtime.restart.times"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 220
    .local v25, "restartTimes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 221
    .local v20, "now":J
    if-nez v25, :cond_f

    .line 223
    add-int/lit8 v25, v25, 0x1

    .line 224
    const-string/jumbo v6, "sys.runtime.restart.times"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v6, "sys.runtime.restart.last"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 227
    :cond_f
    const-string/jumbo v6, "sys.runtime.restart.last"

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 229
    .local v16, "last":J
    const-wide/32 v6, 0x2bf20

    add-long v6, v6, v16

    cmp-long v6, v20, v6

    if-gtz v6, :cond_10

    .line 230
    add-int/lit8 v25, v25, 0x1

    .line 234
    :goto_4
    packed-switch v25, :pswitch_data_0

    goto/16 :goto_2

    .line 238
    :pswitch_0
    const-string/jumbo v6, "sys.runtime.restart.last"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v6, "sys.runtime.restart.times"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 232
    :cond_10
    const/16 v25, 0x1

    goto :goto_4

    .line 243
    :pswitch_1
    const-string v6, "BootReceiver"

    const-string v7, "Reboot device as continuous restarts are detected!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string/jumbo v6, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 245
    .local v19, "pm":Landroid/os/PowerManager;
    if-eqz v19, :cond_5

    .line 246
    const-string/jumbo v6, "rolling restart"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/PowerManager;->rebootWithCheckin(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 268
    .end local v16    # "last":J
    .end local v19    # "pm":Landroid/os/PowerManager;
    .end local v20    # "now":J
    .end local v25    # "restartTimes":I
    .restart local v15    # "i":I
    .restart local v26    # "tombstoneFiles":[Ljava/io/File;
    :cond_11
    new-instance v6, Lcom/android/server/BootReceiver$2;

    sget-object v7, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    move-object/from16 v7, p0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sput-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    .line 282
    sget-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    invoke-virtual {v6}, Landroid/os/FileObserver;->startWatching()V

    .line 283
    return-void

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v0, "com.google.android.systemupdater"

    const-string v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    new-instance v0, Lcom/android/server/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    .line 96
    return-void
.end method

.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1

    .prologue
    .line 572
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    .line 577
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZ)V
    .locals 50
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z

    .prologue
    .line 983
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v12, v6, v8

    .line 984
    .local v12, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v14, v6, v8

    .line 985
    .local v14, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v16, v6, v8

    .line 987
    .local v16, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v42

    .line 989
    .local v42, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v18, v6, v8

    .line 990
    .local v18, "dalvikMax":J
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v22, v6, v8

    .line 991
    .local v22, "dalvikFree":J
    sub-long v20, v18, v22

    .line 992
    .local v20, "dalvikAllocated":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v44

    .line 993
    .local v44, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v46

    .line 994
    .local v46, "viewRootInstanceCount":J
    const-class v5, Landroid/app/ContextImpl;

    invoke-static {v5}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v26

    .line 995
    .local v26, "appContextInstanceCount":J
    const-class v5, Landroid/app/Activity;

    invoke-static {v5}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v24

    .line 996
    .local v24, "activityInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v33

    .line 997
    .local v33, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v34

    .line 998
    .local v34, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v30

    .line 999
    .local v30, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v31

    .line 1000
    .local v31, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v29

    .line 1001
    .local v29, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v40

    .line 1002
    .local v40, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v38

    .line 1003
    .local v38, "parcelCount":J
    const-class v5, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v5}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v36

    .line 1004
    .local v36, "openSslSocketCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v43

    .line 1006
    .local v43, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v11, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v5 .. v23}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZILjava/lang/String;JJJJJJ)V

    .line 1011
    if-eqz p3, :cond_3

    .line 1016
    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1017
    move-object/from16 v0, p1

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1018
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1019
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1021
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1022
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1023
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1024
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1026
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1027
    move-object/from16 v0, p1

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1030
    move-object/from16 v0, v43

    iget v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v5, v5, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1031
    move-object/from16 v0, v43

    iget v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v5, v5, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1032
    move-object/from16 v0, v43

    iget v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v5, v5, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1033
    move-object/from16 v0, v43

    iget v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v5, v5, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1034
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_1
    move-object/from16 v0, v43

    iget-object v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v35

    if-ge v0, v5, :cond_1

    .line 1035
    move-object/from16 v0, v43

    iget-object v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1036
    .local v32, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v32

    iget-wide v6, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1038
    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v32

    iget-wide v6, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1039
    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v32

    iget v5, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1040
    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 1006
    .end local v32    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v35    # "i":I
    :cond_0
    const-string/jumbo v11, "unknown"

    goto/16 :goto_0

    .line 1043
    .restart local v35    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1095
    .end local v35    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 1048
    :cond_3
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    const-string v5, " Objects"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    const-string v5, "%21s %8d %21s %8d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Views:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "ViewRootImpl:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    const-string v5, "%21s %8d %21s %8d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "AppContexts:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Activities:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    const-string v5, "%21s %8d %21s %8d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Assets:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "AssetManagers:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    const-string v5, "%21s %8d %21s %8d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Local Binders:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Proxy Binders:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    const-string v5, "%21s %8d %21s %8d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Parcel memory:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x400

    div-long v8, v40, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Parcel count:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    const-string v5, "%21s %8d %21s %8d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Death Recipients:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "OpenSSL Sockets:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    const-string v5, " SQL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const-string v5, "%21s %8d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "MEMORY_USED:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v43

    iget v8, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v8, v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    const-string v5, "%21s %8d %21s %8d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "PAGECACHE_OVERFLOW:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v43

    iget v8, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v8, v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "MALLOC_SIZE:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, v43

    iget v8, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v8, v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, v43

    iget-object v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1074
    .local v4, "N":I
    if-lez v4, :cond_7

    .line 1075
    const-string v5, " DATABASES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    const-string v5, "  %8s %8s %14s %14s  %s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "pgsz"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "dbsz"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Lookaside(b)"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "cache"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "Dbname"

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_3
    move/from16 v0, v35

    if-ge v0, v4, :cond_7

    .line 1079
    move-object/from16 v0, v43

    iget-object v5, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1080
    .restart local v32    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v6, "  %8s %8s %14s %14s  %s"

    const/4 v5, 0x5

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, v32

    iget-wide v10, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v48, 0x0

    cmp-long v5, v10, v48

    if-lez v5, :cond_4

    move-object/from16 v0, v32

    iget-wide v10, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    :goto_4
    aput-object v5, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v32

    iget-wide v10, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide/16 v48, 0x0

    cmp-long v5, v10, v48

    if-lez v5, :cond_5

    move-object/from16 v0, v32

    iget-wide v10, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    :goto_5
    aput-object v5, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, v32

    iget v5, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v5, :cond_6

    move-object/from16 v0, v32

    iget v5, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    aput-object v5, v7, v8

    const/4 v5, 0x3

    move-object/from16 v0, v32

    iget-object v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    aput-object v8, v7, v5

    const/4 v5, 0x4

    move-object/from16 v0, v32

    iget-object v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    aput-object v8, v7, v5

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 1080
    :cond_4
    const-string v5, " "

    goto :goto_4

    :cond_5
    const-string v5, " "

    goto :goto_5

    :cond_6
    const-string v5, " "

    goto :goto_6

    .line 1089
    .end local v32    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v35    # "i":I
    :cond_7
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v28

    .line 1090
    .local v28, "assetAlloc":Ljava/lang/String;
    if-eqz v28, :cond_2

    .line 1091
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    const-string v5, " Asset Allocations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 580
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    # getter for: Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;
    invoke-static {v0}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 585
    :cond_1
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "instrumentationName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p7, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "enableOpenGlTrace"    # Z
    .param p11, "isRestrictedBackupMode"    # Z
    .param p12, "persistent"    # Z
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p16, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 778
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p15, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p15, :cond_0

    .line 780
    invoke-static/range {p15 .. p15}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 783
    :cond_0
    move-object/from16 v0, p16

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 801
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 802
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 804
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface {v3, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 807
    :goto_0
    if-eqz v2, :cond_2

    .line 808
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    .line 809
    .local v6, "sharedUserIdSet":Z
    :goto_1
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_4

    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x1

    .line 812
    .local v4, "processNameNotDefault":Z
    :goto_2
    if-nez v6, :cond_1

    if-eqz v4, :cond_5

    :cond_1
    const/4 v5, 0x1

    .line 816
    .local v5, "sharable":Z
    :goto_3
    if-nez v5, :cond_2

    .line 817
    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v9, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .end local v4    # "processNameNotDefault":Z
    .end local v5    # "sharable":Z
    .end local v6    # "sharedUserIdSet":Z
    :cond_2
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 823
    .local v1, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 824
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 825
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 826
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 827
    move-object/from16 v0, p6

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 828
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 829
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 830
    move/from16 v0, p9

    iput v0, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 831
    move/from16 v0, p10

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    .line 832
    move/from16 v0, p11

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 833
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 834
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 835
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 836
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 837
    iget-object v7, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v8, 0x6e

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v7, v8, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 838
    return-void

    .line 808
    .end local v1    # "data":Landroid/app/ActivityThread$AppBindData;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 809
    .restart local v6    # "sharedUserIdSet":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 812
    .restart local v4    # "processNameNotDefault":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 805
    .end local v4    # "processNameNotDefault":Z
    .end local v6    # "sharedUserIdSet":Z
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public clearDnsCache()V
    .locals 1

    .prologue
    .line 859
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 862
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    .line 863
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .prologue
    .line 935
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 936
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 944
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 946
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 947
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 948
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 949
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 950
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x88

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v6

    .line 952
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string v1, "dumpActivity failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1105
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1106
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1107
    .local v0, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1109
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    # invokes: Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1100
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;)V

    .line 1101
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "managed"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 916
    new-instance v2, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 917
    .local v2, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 918
    iput-object p3, v2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 919
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x87

    if-eqz p1, :cond_0

    move v3, v5

    :goto_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 920
    return-void

    :cond_0
    move v3, v4

    .line 919
    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "args"    # [Ljava/lang/String;

    .prologue
    .line 972
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 973
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .local v1, "pw":Ljava/io/PrintWriter;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 975
    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 979
    return-void

    .line 977
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 958
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 960
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 961
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 962
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 963
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :goto_0
    return-void

    .line 964
    :catch_0
    move-exception v6

    .line 965
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string v1, "dumpProvider failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 881
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 883
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 884
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 885
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 886
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v6

    .line 888
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string v1, "dumpService failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 876
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 877
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 878
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .prologue
    .line 912
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7f

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v2, p2, v0, p3}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 913
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I

    .prologue
    .line 1119
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1120
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1121
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1122
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1123
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1124
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 908
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 909
    return-void
.end method

.method public scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 1192
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x94

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1193
    return-void

    .line 1192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    .prologue
    .line 733
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 734
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 735
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 736
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 737
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 742
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 743
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1187
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x93

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1188
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 849
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 850
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 851
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 939
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 940
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    .prologue
    .line 703
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 704
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 705
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 706
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 708
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 709
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .prologue
    .line 722
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 723
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 724
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 725
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 726
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 728
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 729
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I

    .prologue
    .line 686
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 688
    return-void

    .line 686
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 713
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 714
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 715
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 717
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 718
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1197
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 842
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1177
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1178
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "referrer"    # Ljava/lang/String;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "procState"    # I
    .param p10, "state"    # Landroid/os/Bundle;
    .param p11, "persistentState"    # Landroid/os/PersistableBundle;
    .param p14, "notResumed"    # Z
    .param p15, "isForward"    # Z
    .param p16, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;ZZ",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 639
    .local p12, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p13, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop$Tag;->AMS6:Lcom/motorola/kpi/Kpi6paTop$Tag;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/kpi/Kpi6paTop;->log(Lcom/motorola/kpi/Kpi6paTop$Tag;[Ljava/lang/Object;)V

    .line 642
    const/4 v2, 0x0

    invoke-virtual {p0, p9, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 644
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 646
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 647
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 648
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 649
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    .line 650
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 651
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 652
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 653
    iput-object p10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 654
    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 656
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 657
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 659
    move/from16 v0, p14

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 660
    move/from16 v0, p15

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 662
    move-object/from16 v0, p16

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 664
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 666
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 667
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 904
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 905
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 678
    .local v0, "data":Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 679
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 681
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 682
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x92

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1148
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 591
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop$Tag;->AT1:Lcom/motorola/kpi/Kpi6paTop$Tag;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/motorola/kpi/Kpi6paTop;->log(Lcom/motorola/kpi/Kpi6paTop$Tag;[Ljava/lang/Object;)V

    .line 593
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_1

    const/16 v2, 0x66

    :goto_0
    if-eqz p3, :cond_2

    :goto_1
    if-eqz p5, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v3, v2, p1, v0, p4}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 598
    return-void

    .line 593
    :cond_1
    const/16 v2, 0x65

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I

    .prologue
    .line 693
    const/4 v2, 0x0

    move/from16 v0, p9

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 694
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object v2, p1

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 696
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 697
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 698
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x71

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 699
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 899
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 901
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 672
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 674
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "processState"    # I
    .param p3, "isForward"    # Z
    .param p4, "resumeArgs"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 620
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6b

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 621
    return-void
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 625
    .local v0, "res":Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 626
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 627
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 628
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskRemoved"    # Z
    .param p3, "startId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/content/Intent;

    .prologue
    .line 755
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 756
    .local v0, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 757
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 758
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 759
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 760
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 762
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 763
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    .line 614
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x89

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 615
    return-void

    .line 614
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I

    .prologue
    .line 602
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    const/4 v2, 0x0

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 605
    return-void

    .line 602
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 766
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 767
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 845
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 846
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .prologue
    .line 1142
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x90

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1143
    return-void

    .line 1142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1139
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 746
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 747
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 748
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 750
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 751
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z

    .prologue
    .line 608
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x69

    :goto_0
    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 611
    return-void

    .line 608
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    .line 1127
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1128
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;

    .prologue
    .line 866
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    .line 867
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_0

    .line 868
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setProcessState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1151
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1152
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .prologue
    .line 928
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1114
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 1131
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1132
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1133
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1134
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1135
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .prologue
    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_0
    iget v3, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v3, p1, :cond_1

    .line 1157
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 1159
    const/4 v1, 0x0

    .line 1160
    .local v1, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v0, 0x1

    .line 1161
    .local v0, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    .line 1163
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x3

    if-gt p1, v3, :cond_0

    .line 1164
    const/4 v2, 0x0

    .line 1166
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 1172
    .end local v0    # "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    .end local v1    # "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    .end local v2    # "dalvikProcessState":I
    :cond_1
    monitor-exit p0

    .line 1173
    return-void

    .line 1172
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final updateTimePrefs(Z)V
    .locals 0
    .param p1, "is24Hour"    # Z

    .prologue
    .line 1182
    invoke-static {p1}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    .line 1183
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 855
    return-void
.end method

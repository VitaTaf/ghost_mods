.class public Lcom/motorola/android/internal/util/ApplicationInfoUtils;
.super Ljava/lang/Object;
.source "ApplicationInfoUtils.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ApplicationInfoUtils"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public CompareAnySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "pkgName1"    # Ljava/lang/String;
    .param p2, "pkgName2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .local v7, "signatureMatch":Z
    :try_start_0
    iget-object v9, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v9, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .local v6, "permissionPackagePkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    :cond_0
    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "ApplicationInfoUtils"

    const-string v10, "Packageinfo not found"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "permissionPackagePkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "ApplicationInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name Not Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "ApplicationInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name Not Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "permissionPackagePkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "callingAppSignatures":[Landroid/content/pm/Signature;
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v5, "permissionAppSignatures":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v0

    if-ge v3, v9, :cond_5

    if-nez v7, :cond_5

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v9, v5

    if-ge v4, v9, :cond_3

    aget-object v9, v0, v3

    aget-object v10, v5, v4

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "j":I
    :cond_5
    if-eqz v7, :cond_7

    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "ApplicationInfoUtils"

    const-string v10, "Signature Match"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "ApplicationInfoUtils Signature Mismatch"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "callingAppSignatures":[Landroid/content/pm/Signature;
    .end local v3    # "i":I
    .end local v5    # "permissionAppSignatures":[Landroid/content/pm/Signature;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/SecurityException;
    const-string v9, "ApplicationInfoUtils"

    const-string v10, "CompareAnySignature, Signature Mismatch"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFirstPackageNamefromPID(I)Ljava/lang/String;
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const-string v1, ""

    .local v1, "callingPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "actvityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .local v5, "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .local v4, "pidFound":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "actvityManager":Landroid/app/ActivityManager;
    .end local v3    # "i":I
    .end local v4    # "pidFound":Z
    .end local v5    # "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    :goto_1
    sget-boolean v6, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "ApplicationInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling Package Name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    .restart local v0    # "actvityManager":Landroid/app/ActivityManager;
    .restart local v3    # "i":I
    .restart local v4    # "pidFound":Z
    .restart local v5    # "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "actvityManager":Landroid/app/ActivityManager;
    .end local v3    # "i":I
    .end local v4    # "pidFound":Z
    .end local v5    # "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPackagesforUid(I)[Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ApplicationInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages for corresponding Uid- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "not Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemApp(I)Z
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .local v3, "preLoadedSystemApp":Z
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getPackagesforUid(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "callingPackageNames":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "ApplicationInfoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is Preloaded App? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .end local v0    # "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v5, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "ApplicationInfoUtils"

    const-string v6, "Package Name for corresponding Uid Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

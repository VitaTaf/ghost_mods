.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z

.field final synthetic val$wipeBp:Z

.field final synthetic val$wipeDataCacheOnly:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;ZZLandroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-boolean p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeDataCacheOnly:Z

    iput-boolean p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeBp:Z

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 58
    :try_start_0
    sget v1, Landroid/os/RecoverySystem;->WIPE_FLAG_NONE:I

    .line 59
    .local v1, "flag":I
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeDataCacheOnly:Z

    if-eqz v2, :cond_0

    .line 60
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_DATA_CACHE_ONLY:I

    or-int/2addr v1, v2

    .line 63
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeBp:Z

    if-eqz v2, :cond_1

    .line 64
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_BP:I

    or-int/2addr v1, v2

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;IZLjava/lang/String;)V

    .line 69
    const-string v2, "MasterClear"

    const-string v3, "Still running after master clear?!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .end local v1    # "flag":I
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "MasterClear"

    const-string v3, "Can\'t perform master clear/factory reset"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "MasterClear"

    const-string v3, "Can\'t perform master clear/factory reset"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

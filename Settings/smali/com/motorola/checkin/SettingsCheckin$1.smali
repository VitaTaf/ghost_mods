.class final Lcom/motorola/checkin/SettingsCheckin$1;
.super Ljava/lang/Thread;
.source "SettingsCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/checkin/SettingsCheckin;->startCheckin(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/checkin/SettingsCheckin$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    # getter for: Lcom/motorola/checkin/SettingsCheckin;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/motorola/checkin/SettingsCheckin;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    # getter for: Lcom/motorola/checkin/SettingsCheckin;->mInstance:Lcom/motorola/checkin/SettingsCheckin;
    invoke-static {}, Lcom/motorola/checkin/SettingsCheckin;->access$100()Lcom/motorola/checkin/SettingsCheckin;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/checkin/SettingsCheckin;

    iget-object v2, p0, Lcom/motorola/checkin/SettingsCheckin$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/motorola/checkin/SettingsCheckin;-><init>(Landroid/content/Context;Lcom/motorola/checkin/SettingsCheckin$1;)V

    # setter for: Lcom/motorola/checkin/SettingsCheckin;->mInstance:Lcom/motorola/checkin/SettingsCheckin;
    invoke-static {v0}, Lcom/motorola/checkin/SettingsCheckin;->access$102(Lcom/motorola/checkin/SettingsCheckin;)Lcom/motorola/checkin/SettingsCheckin;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

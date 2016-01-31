.class final Landroid/app/admin/DevicePolicyManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$SettingsObserver;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "x1"    # Landroid/app/admin/DevicePolicyManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$SettingsObserver;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$SettingsObserver;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    # getter for: Landroid/app/admin/DevicePolicyManager;->mAboveKeyguardPolicySync:Ljava/lang/Object;
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->access$100(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    # setter for: Landroid/app/admin/DevicePolicyManager;->mAovGoogleNowComponentName:Landroid/content/ComponentName;
    invoke-static {v0, v1}, Landroid/app/admin/DevicePolicyManager;->access$202(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    const/4 v1, 0x0

    # setter for: Landroid/app/admin/DevicePolicyManager;->mComponentNamesAllowedAboveKeyguard:Ljava/util/Set;
    invoke-static {v0, v1}, Landroid/app/admin/DevicePolicyManager;->access$302(Landroid/app/admin/DevicePolicyManager;Ljava/util/Set;)Ljava/util/Set;

    const/4 v1, 0x0

    # setter for: Landroid/app/admin/DevicePolicyManager;->mGoogleNowIntentsAllowedAboveKeyguard:Ljava/util/Set;
    invoke-static {v0, v1}, Landroid/app/admin/DevicePolicyManager;->access$402(Landroid/app/admin/DevicePolicyManager;Ljava/util/Set;)Ljava/util/Set;

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

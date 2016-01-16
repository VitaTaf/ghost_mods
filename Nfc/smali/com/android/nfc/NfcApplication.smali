.class public Lcom/android/nfc/NfcApplication;
.super Landroid/app/Application;
.source "NfcApplication.java"


# static fields
.field static final NFC_PROCESS:Ljava/lang/String; = "com.android.nfc"

.field static final TAG:Ljava/lang/String; = "NfcApplication"


# instance fields
.field mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    const/4 v3, 0x0

    .line 50
    .local v3, "isMainProcess":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 51
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 52
    .local v4, "processes":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v1, v5

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 55
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 56
    const-string v5, "com.android.nfc"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 60
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    .line 61
    new-instance v5, Lcom/android/nfc/NfcService;

    invoke-direct {v5, p0}, Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V

    iput-object v5, p0, Lcom/android/nfc/NfcApplication;->mNfcService:Lcom/android/nfc/NfcService;

    .line 62
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    .line 64
    :cond_2
    return-void
.end method

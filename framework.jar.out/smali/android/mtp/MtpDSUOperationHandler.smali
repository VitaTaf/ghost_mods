.class Landroid/mtp/MtpDSUOperationHandler;
.super Ljava/lang/Object;
.source "MtpDSUOperationHandler.java"


# static fields
.field private static final NOT_AVAILABLE:Ljava/lang/String; = "NOT_AVAILABLE"

.field private static final TAG:Ljava/lang/String; = "MtpDSUOperationHandler"

.field private static mLock:Ljava/lang/Object;

.field private static mSingleton:Landroid/mtp/MtpDSUOperationHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCusInterface:Landroid/mtp/MtpDSUCusInterface;

.field private mUtil:Landroid/mtp/MtpDSUUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDSUOperationHandler;->mSingleton:Landroid/mtp/MtpDSUOperationHandler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/mtp/MtpDSUOperationHandler;->mLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    iput-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mCusInterface:Landroid/mtp/MtpDSUCusInterface;

    iput-object p1, p0, Landroid/mtp/MtpDSUOperationHandler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/mtp/MtpDSUUtility;

    invoke-direct {v0, p1}, Landroid/mtp/MtpDSUUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    new-instance v0, Landroid/mtp/MtpDSUCusInterface;

    invoke-direct {v0, p1}, Landroid/mtp/MtpDSUCusInterface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mCusInterface:Landroid/mtp/MtpDSUCusInterface;

    return-void
.end method

.method public static singleton(Landroid/content/Context;)Landroid/mtp/MtpDSUOperationHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Landroid/mtp/MtpDSUOperationHandler;->mSingleton:Landroid/mtp/MtpDSUOperationHandler;

    if-nez v0, :cond_1

    sget-object v1, Landroid/mtp/MtpDSUOperationHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/mtp/MtpDSUOperationHandler;->mSingleton:Landroid/mtp/MtpDSUOperationHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/mtp/MtpDSUOperationHandler;

    invoke-direct {v0, p0}, Landroid/mtp/MtpDSUOperationHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/mtp/MtpDSUOperationHandler;->mSingleton:Landroid/mtp/MtpDSUOperationHandler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/mtp/MtpDSUOperationHandler;->mSingleton:Landroid/mtp/MtpDSUOperationHandler;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public connectionDown()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mCusInterface:Landroid/mtp/MtpDSUCusInterface;

    invoke-virtual {v0}, Landroid/mtp/MtpDSUCusInterface;->sendPendingIntent()V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v0}, Landroid/mtp/MtpDSUUtility;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "s":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getBuildId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getBootloaderVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getFingerPrint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getBlurVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getAppsVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getDeviceRootedState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getBasebandVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getKernelVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getMediaVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getProductName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v1}, Landroid/mtp/MtpDSUUtility;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8001
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
    .end packed-switch
.end method

.method public getUpgradeLogFile()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v0}, Landroid/mtp/MtpDSUUtility;->getUpgradeLogFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCUSOperations(ILjava/lang/String;[I)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "strParam"    # Ljava/lang/String;
    .param p3, "intParams"    # [I

    .prologue
    const v0, 0x900a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v0}, Landroid/mtp/MtpDSUUtility;->getUpgradeLogFile()Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mUtil:Landroid/mtp/MtpDSUUtility;

    invoke-virtual {v0}, Landroid/mtp/MtpDSUUtility;->getUpgradeResult()I

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDSUOperationHandler;->mCusInterface:Landroid/mtp/MtpDSUCusInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/mtp/MtpDSUCusInterface;->handler(ILjava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method public switchToFastboot()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/mtp/MtpDSUOperationHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "bootloader"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    const-string v1, "MtpDSUOperationHandler"

    const-string v2, "after invoking PowerManager.reboot"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

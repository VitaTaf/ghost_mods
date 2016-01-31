.class Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;
.super Landroid/os/Handler;
.source "SettingsCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/checkin/SettingsCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckinHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/checkin/SettingsCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/checkin/SettingsCheckin;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;->this$0:Lcom/motorola/checkin/SettingsCheckin;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/checkin/SettingsCheckin;Landroid/os/Looper;Lcom/motorola/checkin/SettingsCheckin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/checkin/SettingsCheckin;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/motorola/checkin/SettingsCheckin$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;-><init>(Lcom/motorola/checkin/SettingsCheckin;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;->this$0:Lcom/motorola/checkin/SettingsCheckin;

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/motorola/checkin/SettingsCheckin;->handleLogEvent(ILjava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/motorola/checkin/SettingsCheckin;->access$500(Lcom/motorola/checkin/SettingsCheckin;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SettingsCheckin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail handleMessage - Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

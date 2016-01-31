.class public Lcom/motorola/checkin/SettingsCheckin;
.super Ljava/lang/Object;
.source "SettingsCheckin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;,
        Lcom/motorola/checkin/SettingsCheckin$Event;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mInstance:Lcom/motorola/checkin/SettingsCheckin;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/checkin/SettingsCheckin;->mLock:Ljava/lang/Object;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/checkin/SettingsCheckin;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/checkin/SettingsCheckin;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/motorola/checkin/SettingsCheckin$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/motorola/checkin/SettingsCheckin$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/checkin/SettingsCheckin;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/checkin/SettingsCheckin;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/motorola/checkin/SettingsCheckin;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/checkin/SettingsCheckin;->mInstance:Lcom/motorola/checkin/SettingsCheckin;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/checkin/SettingsCheckin;)Lcom/motorola/checkin/SettingsCheckin;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/checkin/SettingsCheckin;

    .prologue
    sput-object p0, Lcom/motorola/checkin/SettingsCheckin;->mInstance:Lcom/motorola/checkin/SettingsCheckin;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/checkin/SettingsCheckin;->concat(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/checkin/SettingsCheckin;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/checkin/SettingsCheckin;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/checkin/SettingsCheckin;->handleLogEvent(ILjava/lang/Object;)V

    return-void
.end method

.method private static varargs concat(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method private static getSimPlmn(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "plmn":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    const-string v5, ","

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean v3, Lcom/motorola/checkin/SettingsCheckin;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SettingsCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimPlmn|plmn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private handleLogEvent(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    packed-switch p1, :pswitch_data_0

    .end local p2    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/motorola/checkin/SettingsCheckin$Event;

    .end local p2    # "obj":Ljava/lang/Object;
    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/motorola/checkin/SettingsCheckin$Event;->logEvent(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static logConnectionPriorityEvents(I)V
    .locals 6
    .param p0, "connection_priority"    # I

    .prologue
    :try_start_0
    invoke-static {}, Lcom/motorola/checkin/SettingsCheckin;->peekInstance()Lcom/motorola/checkin/SettingsCheckin;

    move-result-object v0

    .local v0, "checkin":Lcom/motorola/checkin/SettingsCheckin;
    if-nez v0, :cond_0

    .end local v0    # "checkin":Lcom/motorola/checkin/SettingsCheckin;
    :goto_0
    return-void

    .restart local v0    # "checkin":Lcom/motorola/checkin/SettingsCheckin;
    :cond_0
    new-instance v2, Lcom/motorola/checkin/SettingsCheckin$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "MultiSimEvents"

    invoke-direct {v2, v0, v3}, Lcom/motorola/checkin/SettingsCheckin$Event;-><init>(Lcom/motorola/checkin/SettingsCheckin;Ljava/lang/String;)V

    .local v2, "event":Lcom/motorola/checkin/SettingsCheckin$Event;
    const-string v3, "event_type"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "conn_prio"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/motorola/checkin/SettingsCheckin;->logMeanEvent(Lcom/motorola/checkin/SettingsCheckin$Event;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "checkin":Lcom/motorola/checkin/SettingsCheckin;
    .end local v2    # "event":Lcom/motorola/checkin/SettingsCheckin$Event;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SettingsCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to log event - Click Circle Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private logMeanEvent(Lcom/motorola/checkin/SettingsCheckin$Event;)Z
    .locals 3
    .param p1, "event"    # Lcom/motorola/checkin/SettingsCheckin$Event;

    .prologue
    invoke-direct {p0}, Lcom/motorola/checkin/SettingsCheckin;->startHandler()V

    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandler:Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;

    iget-object v1, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandler:Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static logSimOrDataEvents(Landroid/content/Context;II)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "EventType"    # I
    .param p2, "subId"    # I

    .prologue
    :try_start_0
    invoke-static {}, Lcom/motorola/checkin/SettingsCheckin;->peekInstance()Lcom/motorola/checkin/SettingsCheckin;

    move-result-object v0

    .local v0, "checkin":Lcom/motorola/checkin/SettingsCheckin;
    if-nez v0, :cond_0

    .end local v0    # "checkin":Lcom/motorola/checkin/SettingsCheckin;
    :goto_0
    return-void

    .restart local v0    # "checkin":Lcom/motorola/checkin/SettingsCheckin;
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v5

    .local v5, "slotId":I
    add-int/lit8 v7, v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "slot_no":Ljava/lang/String;
    move-object v1, v6

    .local v1, "default_sim":Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/motorola/checkin/SettingsCheckin;->getSimPlmn(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "sim_plmn":Ljava/lang/String;
    new-instance v3, Lcom/motorola/checkin/SettingsCheckin$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "MultiSimEvents"

    invoke-direct {v3, v0, v7}, Lcom/motorola/checkin/SettingsCheckin$Event;-><init>(Lcom/motorola/checkin/SettingsCheckin;Ljava/lang/String;)V

    .local v3, "event":Lcom/motorola/checkin/SettingsCheckin$Event;
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-direct {v0, v3}, Lcom/motorola/checkin/SettingsCheckin;->logMeanEvent(Lcom/motorola/checkin/SettingsCheckin$Event;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "checkin":Lcom/motorola/checkin/SettingsCheckin;
    .end local v1    # "default_sim":Ljava/lang/String;
    .end local v3    # "event":Lcom/motorola/checkin/SettingsCheckin$Event;
    .end local v4    # "sim_plmn":Ljava/lang/String;
    .end local v5    # "slotId":I
    .end local v6    # "slot_no":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "SettingsCheckin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail to log event - Click Circle Exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "checkin":Lcom/motorola/checkin/SettingsCheckin;
    .restart local v1    # "default_sim":Ljava/lang/String;
    .restart local v3    # "event":Lcom/motorola/checkin/SettingsCheckin$Event;
    .restart local v4    # "sim_plmn":Ljava/lang/String;
    .restart local v5    # "slotId":I
    .restart local v6    # "slot_no":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    const-string v7, "event_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "slot_no"

    invoke-virtual {v3, v7, v6}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "sim_plmn"

    invoke-virtual {v3, v7, v4}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    const-string v7, "event_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "def_sim"

    invoke-virtual {v3, v7, v1}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "slot_no"

    invoke-virtual {v3, v7, v6}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "sim_plmn"

    invoke-virtual {v3, v7, v4}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static peekInstance()Lcom/motorola/checkin/SettingsCheckin;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/checkin/SettingsCheckin;->mInstance:Lcom/motorola/checkin/SettingsCheckin;

    return-object v0
.end method

.method public static startCheckin(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/motorola/checkin/SettingsCheckin$1;

    invoke-direct {v0, p0}, Lcom/motorola/checkin/SettingsCheckin$1;-><init>(Landroid/content/Context;)V

    .local v0, "startBackground":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startHandler()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandler:Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/motorola/checkin/SettingsCheckin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;

    iget-object v1, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;-><init>(Lcom/motorola/checkin/SettingsCheckin;Landroid/os/Looper;Lcom/motorola/checkin/SettingsCheckin$1;)V

    iput-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandler:Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;

    :cond_0
    return-void
.end method

.method public static stopCheckin()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/motorola/checkin/SettingsCheckin;->peekInstance()Lcom/motorola/checkin/SettingsCheckin;

    move-result-object v0

    .local v0, "checkin":Lcom/motorola/checkin/SettingsCheckin;
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/motorola/checkin/SettingsCheckin;->stopHandler()V

    :cond_0
    return-void
.end method

.method private stopHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/motorola/checkin/SettingsCheckin;->mHandler:Lcom/motorola/checkin/SettingsCheckin$CheckinHandler;

    :cond_0
    return-void
.end method

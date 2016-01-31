.class public Lcom/android/settings/sim/addon/SimStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStateChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static TAG:Ljava/lang/String;

.field private static sActivityCallback:Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

.field private static sSimEnabledState:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->DBG:Z

    sput-object v1, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    sput-object v1, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sActivityCallback:Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isInProgress()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInProgress(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimReadyAfterEnable(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resetState(I)V
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->isInProgress(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sActivityCallback:Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sActivityCallback:Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

    invoke-interface {v0}, Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;->enableUi()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    :cond_1
    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sActivityCallback:Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sActivityCallback:Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

    invoke-interface {v0, p0}, Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;->refreshUi(I)V

    :cond_2
    return-void
.end method

.method public static setActivityCallback(Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

    .prologue
    sput-object p0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sActivityCallback:Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;

    return-void
.end method

.method public static setReadyState(IZ)V
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "state"    # Z

    .prologue
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->sSimEnabledState:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "slotId":I
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cardState":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cardState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->setReadyState(IZ)V

    goto :goto_0

    :cond_4
    const-string v3, "NOT_READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LOCKED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LOADED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->isSimReadyAfterEnable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    invoke-static {v2}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->resetState(I)V

    goto/16 :goto_0
.end method

.class Lcom/android/server/BatteryService$10;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 856
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uevent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v2, "POWER_SUPPLY_CHARGE_RATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "chargeRateStr":Ljava/lang/String;
    const-string v2, "turbo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    const/4 v0, 0x3

    .line 868
    .local v0, "chargeRate":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargeRate:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 870
    iget-object v2, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mChargeRate:I
    invoke-static {v2, v0}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;I)I

    .line 872
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    iget-object v2, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;Z)V

    .line 874
    return-void

    .line 861
    .end local v0    # "chargeRate":I
    :cond_1
    const-string v2, "weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 862
    const/4 v0, 0x2

    .restart local v0    # "chargeRate":I
    goto :goto_0

    .line 863
    .end local v0    # "chargeRate":I
    :cond_2
    const-string v2, "normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 864
    const/4 v0, 0x1

    .restart local v0    # "chargeRate":I
    goto :goto_0

    .line 866
    .end local v0    # "chargeRate":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "chargeRate":I
    goto :goto_0

    .line 872
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

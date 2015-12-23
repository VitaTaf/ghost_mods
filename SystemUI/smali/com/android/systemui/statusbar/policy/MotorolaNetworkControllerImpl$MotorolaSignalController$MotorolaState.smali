.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
.super Ljava/lang/Object;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaState"
.end annotation


# instance fields
.field activityIn:Z

.field activityOut:Z

.field connected:Z

.field enabled:Z

.field iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

.field inetCondition:I

.field level:I

.field rssi:I

.field time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    .prologue
    .line 11418
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    .line 11419
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->enabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->enabled:Z

    .line 11420
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    .line 11421
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    .line 11422
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    .line 11423
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityIn:Z

    .line 11424
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityOut:Z

    .line 11425
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->rssi:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->rssi:I

    .line 11426
    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->time:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->time:J

    .line 11427
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 11462
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11470
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 11468
    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    .line 11470
    .local v0, "other":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->enabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->enabled:Z

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityIn:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityOut:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11435
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "={\n  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11436
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->toString(Ljava/lang/StringBuilder;)V

    .line 11437
    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 11447
    const-string v0, "time="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MM-dd hh:mm:ss"

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->time:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11448
    const-string v0, "enab="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11449
    const-string v0, "conn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11450
    const-string v0, "levl="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11451
    const-string v0, "rssi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11452
    const-string v0, "icons="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11453
    const-string v0, "in="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11454
    const-string v0, "out="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->activityOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11455
    const-string v0, "inet="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11456
    return-void
.end method

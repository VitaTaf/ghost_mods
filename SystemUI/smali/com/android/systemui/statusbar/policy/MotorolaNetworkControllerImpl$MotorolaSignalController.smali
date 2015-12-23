.class abstract Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;
.super Ljava/lang/Object;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MotorolaSignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;",
        "I:",
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mCurrentContext:Landroid/content/Context;

.field protected final mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mHistory:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

.field private mHistoryIndex:I

.field protected final mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

.field protected final mSignalClusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSignalsChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;

.field protected final mTransportType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "currentContext"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p6, "networkController"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    .local p4, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;>;"
    .local p5, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;>;"
    const/16 v3, 0x10

    .line 11055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotoNetwCtrlr."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTag:Ljava/lang/String;

    .line 11057
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    .line 11058
    iput p3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTransportType:I

    .line 11059
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentContext:Landroid/content/Context;

    .line 11060
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    .line 11061
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mSignalClusters:Ljava/util/List;

    .line 11062
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    .line 11063
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    .line 11068
    new-array v1, v3, [Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    .line 11070
    const/4 v0, 0x0

    .line 11071
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 11074
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v2

    aput-object v2, v1, v0

    .line 11072
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11077
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLevel(I)V
    .locals 4
    .param p1, "maxAllowed"    # I

    .prologue
    .line 11020
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    .line 11021
    .local v0, "level":I
    if-gez v0, :cond_1

    .line 11022
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignalLevel value is unset: current value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value forced to zero."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11027
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    .line 11044
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    .line 11045
    return-void

    .line 11028
    :cond_1
    if-le v0, p1, :cond_0

    .line 11029
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignalLevel value is invalid: current value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value forced to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n Wifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  1.) Improper setup of wifi signal-level icons."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  2.) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n Mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  1.) Check if correct signal_level.xml file is installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  2.) Check that config_enable_carrier_custom_icons is true."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11042
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    goto :goto_0
.end method

.method protected abstract cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 11301
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotorolaSignalController.dump: Current MotorolaState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11308
    const/4 v1, 0x0

    .line 11310
    .local v1, "size":I
    const/4 v0, 0x0

    .line 11311
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 11314
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->time:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 11317
    add-int/lit8 v1, v1, 0x1

    .line 11312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11322
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistoryIndex:I

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v2, -0x1

    .line 11323
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistoryIndex:I

    add-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    .line 11326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Previous MotorolaState( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistoryIndex:I

    add-int/lit8 v3, v3, 0x10

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    and-int/lit8 v4, v0, 0xf

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11324
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 11334
    :cond_2
    return-void
.end method

.method public getContentDescription()I
    .locals 2

    .prologue
    .line 11236
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    if-eqz v1, :cond_1

    .line 11240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11245
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    .line 11246
    .local v0, "level":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 11247
    const/4 v0, 0x4

    .line 11250
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mContentDesc:[I

    aget v1, v1, v0

    .line 11261
    .end local v0    # "level":I
    :goto_0
    return v1

    .line 11257
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mDiscContentDesc:I

    goto :goto_0

    .line 11261
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentIconId()I
    .locals 3

    .prologue
    .line 11196
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    if-eqz v1, :cond_1

    .line 11200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    .line 11206
    .local v0, "level":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 11207
    const/4 v0, 0x4

    .line 11210
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mSbIcons:[[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    .line 11228
    .end local v0    # "level":I
    :goto_0
    return v1

    .line 11213
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->enabled:Z

    if-eqz v1, :cond_2

    .line 11217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mSbDiscState:I

    goto :goto_0

    .line 11224
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mSbNullState:I

    goto :goto_0

    .line 11228
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 11287
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    return-object v0
.end method

.method public getQsCurrentIconId()I
    .locals 3

    .prologue
    .line 11157
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->connected:Z

    if-eqz v1, :cond_1

    .line 11161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11166
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->level:I

    .line 11167
    .local v0, "level":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 11168
    const/4 v0, 0x4

    .line 11171
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mQsIcons:[[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    .line 11188
    .end local v0    # "level":I
    :goto_0
    return v1

    .line 11174
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->enabled:Z

    if-eqz v1, :cond_2

    .line 11178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mQsDiscState:I

    goto :goto_0

    .line 11184
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mQsNullState:I

    goto :goto_0

    .line 11188
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 11080
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    return-object v0
.end method

.method protected getStringIfExists(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 11279
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTransportType()I
    .locals 1

    .prologue
    .line 11084
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTransportType:I

    return v0
.end method

.method public isDirty()Z
    .locals 3

    .prologue
    .line 11111
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11114
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 11115
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_1

    .line 11116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDirty: returns true, change in state to: {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11129
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 11137
    :goto_1
    return v0

    .line 11123
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTag:Ljava/lang/String;

    const-string v1, "isDirty: returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11131
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_3

    .line 11132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mTag:Ljava/lang/String;

    const-string v1, "isDirty: returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11137
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract notifyListeners()V
.end method

.method public notifyListenersIfNecessary()V
    .locals 1

    .prologue
    .line 11266
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->saveLastState()V

    .line 11268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->notifyListeners()V

    .line 11269
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    .line 11271
    :cond_0
    return-void
.end method

.method protected recordLastState()V
    .locals 3

    .prologue
    .line 11295
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistoryIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mHistoryIndex:I

    and-int/lit8 v1, v1, 0xf

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V

    .line 11296
    return-void
.end method

.method resetLastState()V
    .locals 2

    .prologue
    .line 11102
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V

    .line 11103
    return-void
.end method

.method public saveLastState()V
    .locals 4

    .prologue
    .line 11145
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->recordLastState()V

    .line 11148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->time:J

    .line 11149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V

    .line 11150
    return-void
.end method

.method public setInetCondition(I)V
    .locals 1
    .param p1, "inetCondition"    # I

    .prologue
    .line 11090
    .local p0, "this":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;, "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->inetCondition:I

    .line 11091
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->notifyListenersIfNecessary()V

    .line 11092
    return-void
.end method

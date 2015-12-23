.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 32
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200b3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 34
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200b1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 109
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState()V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c009e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 71
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    .local v1, "value":I
    :goto_0
    if-eqz v1, :cond_1

    move v0, v2

    .line 73
    .local v0, "airplaneMode":Z
    :goto_1
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 74
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 75
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c00cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 76
    if-eqz v0, :cond_2

    .line 77
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 78
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c009d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 85
    :goto_2
    return-void

    .line 71
    .end local v0    # "airplaneMode":Z
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    goto :goto_0

    .line 72
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "value":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    .restart local v0    # "airplaneMode":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 97
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    .line 99
    if-eqz p1, :cond_1

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

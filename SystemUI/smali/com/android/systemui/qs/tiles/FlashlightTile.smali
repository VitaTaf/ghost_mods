.class public Lcom/android/systemui/qs/tiles/FlashlightTile;
.super Lcom/android/systemui/qs/QSTile;
.source "FlashlightTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;"
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

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mRecentlyOnTimeout:Ljava/lang/Runnable;

.field private mWasLastOn:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 34
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200b7

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200b5

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 141
    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    .line 43
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FlashlightTile;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 72
    .local v0, "newState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 73
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 73
    .restart local v0    # "newState":Z
    :cond_2
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 51
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_0

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    .line 82
    :cond_0
    instance-of v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 83
    check-cast v2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 86
    :cond_1
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 88
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    .line 97
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 98
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 99
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 100
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_2
    instance-of v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    if-eqz v2, :cond_7

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 101
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 102
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_8

    const v1, 0x7f0c00af

    .line 105
    .local v1, "onOrOffId":I
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 106
    return-void

    .line 90
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v1    # "onOrOffId":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/qs/QSTile$H;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 97
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 99
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_2

    .line 100
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 102
    :cond_8
    const v1, 0x7f0c00ae

    goto :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 64
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onFlashlightAvailabilityChanged(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState()V

    .line 139
    return-void
.end method

.method public onFlashlightError()V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public onFlashlightOff()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onFlashlightToggle(Z)V
    .locals 1
    .param p1, "newState"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    .line 133
    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 60
    return-void
.end method

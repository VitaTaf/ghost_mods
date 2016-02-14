.class public Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RotationLockTile.java"


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
.field private final mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02006b

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020069

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02003d

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02003b

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/RotationLockTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getAccessibilityString(ZIII)Ljava/lang/String;
    .locals 4
    .param p1, "locked"    # Z
    .param p2, "idWhenPortrait"    # I
    .param p3, "idWhenLandscape"    # I
    .param p4, "idWhenOff"    # I

    .prologue
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, "portrait":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p2

    .end local v0    # "portrait":Z
    .local v1, "stringID":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v1    # "stringID":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "portrait":Z
    :cond_1
    move v1, p3

    goto :goto_1

    .end local v0    # "portrait":Z
    :cond_2
    move v1, p4

    .restart local v1    # "stringID":I
    goto :goto_1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f0c00cb

    const v2, 0x7f0c00ca

    const v3, 0x7f0c00c9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(ZIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .local v0, "newState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "newState":Z
    :cond_2
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_2
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v5, :cond_0

    .end local p2    # "arg":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    if-eqz p2, :cond_1

    move-object v5, p2

    check-cast v5, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v3, v5, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .local v3, "rotationLocked":Z
    :goto_1
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v4, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .local v4, "userInitiated":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLockAffordanceVisible()Z

    move-result v5

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v2, 0x1

    .local v2, "portrait":Z
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v2, :cond_4

    const v1, 0x7f0c00d7

    .local v1, "label":I
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .end local v1    # "label":I
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_5
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const v5, 0x7f0c00c8

    const v6, 0x7f0c00c7

    const v7, 0x7f0c00c6

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(ZIII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v2    # "portrait":Z
    .end local v3    # "rotationLocked":Z
    .end local v4    # "userInitiated":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v3

    goto :goto_1

    .restart local v3    # "rotationLocked":Z
    :cond_2
    move v4, v6

    goto :goto_2

    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v4    # "userInitiated":Z
    :cond_3
    move v2, v6

    goto :goto_3

    .restart local v2    # "portrait":Z
    :cond_4
    const v1, 0x7f0c00d8

    goto :goto_4

    .restart local v1    # "label":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_5

    .end local v1    # "label":I
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_6
    goto :goto_5

    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_6
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->removeRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0
.end method

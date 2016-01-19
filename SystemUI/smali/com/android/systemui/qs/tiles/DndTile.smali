.class public Lcom/android/systemui/qs/tiles/DndTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DndTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowingDetail:Z

.field private mVisible:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 138
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$1;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 148
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$2;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 54
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DndTileVisible"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mVisible:Z

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.dndtile.SET_VISIBLE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mVisible:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/DndTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/DndTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z

    return p1
.end method

.method private static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isVisible(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DndTileVisible"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setVisible(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visible"    # Z

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.dndtile.SET_VISIBLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0274

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0273

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object v0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f02051b

    const/4 v2, 0x0

    .line 90
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    .local v0, "zen":I
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 92
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mVisible:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 93
    packed-switch v0, :pswitch_data_0

    .line 107
    const v1, 0x7f02051a

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 108
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0275

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0272

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 113
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    .line 116
    :cond_0
    return-void

    .line 90
    .end local v0    # "zen":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    goto :goto_0

    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "zen":I
    :cond_2
    move v1, v2

    .line 91
    goto :goto_1

    .line 95
    :pswitch_0
    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0276

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0270

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 101
    :pswitch_1
    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0277

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0271

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DndTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    goto :goto_0
.end method

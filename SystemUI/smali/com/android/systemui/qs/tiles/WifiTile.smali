.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field static CHATTY:Z

.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field private final mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    .line 363
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    .line 67
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    .line 69
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 70
    return-void
.end method

.method private CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "MotoNetwCtrlr.WifiTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 300
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 305
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 301
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 302
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 303
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    new-instance v0, Lcom/android/systemui/qs/SignalTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 105
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    .line 107
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11200d9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 110
    .local v0, "featureFlag":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_bt_confirmation_checked"

    invoke-static {v2, v4, v3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SHOW_CONFIRMATION_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "request_connection_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->setWifiEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->setWifiEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 141
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 13
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 146
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    .line 147
    sget-boolean v9, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v9, :cond_0

    .line 148
    const-string v9, "MotoNetwCtrlr.WifiTile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleUpdateState arg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    if-nez p2, :cond_2

    .line 151
    sget-boolean v9, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v9, :cond_1

    .line 152
    const-string v9, "MotoNetwCtrlr.WifiTile"

    const-string v10, "handleUpdateState: Exiting: CallbackInfo not supplied"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p2

    .line 158
    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 160
    .local v0, "cb":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v9, :cond_5

    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v9, :cond_5

    iget-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v9, :cond_5

    const/4 v6, 0x1

    .line 161
    .local v6, "wifiConnected":Z
    :goto_1
    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v9, :cond_6

    iget-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v9, :cond_6

    const/4 v8, 0x1

    .line 162
    .local v8, "wifiNotConnected":Z
    :goto_2
    iget-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eq v9, v10, :cond_7

    const/4 v2, 0x1

    .line 163
    .local v2, "enabledChanging":Z
    :goto_3
    if-eqz v2, :cond_3

    .line 164
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 165
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    .line 167
    :cond_3
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 168
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 169
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v9, :cond_8

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 170
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 171
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 173
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 174
    .local v4, "r":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 175
    .local v3, "iconId":I
    iget-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v9, :cond_a

    .line 176
    const v9, 0x7f0200a5

    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 177
    const v3, 0x7f0200a5

    .line 178
    const v9, 0x7f0c00e4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 179
    const v9, 0x7f0c005d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "signalContentDescription":Ljava/lang/String;
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    .line 225
    :goto_6
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    .line 226
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    .line 227
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    .line 229
    if-eqz v6, :cond_d

    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v9, :cond_d

    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityIconId:I

    if-lez v9, :cond_d

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityDescription:Ljava/lang/String;

    .line 242
    .local v1, "dataActivityDesc":Ljava/lang/String;
    :goto_7
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0097

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    .line 245
    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 246
    .local v7, "wifiName":Ljava/lang/String;
    iget-boolean v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-eqz v9, :cond_4

    .line 247
    const v9, 0x7f0c0063

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 249
    :cond_4
    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dualLabelContentDescription:Ljava/lang/String;

    .line 250
    sget-boolean v9, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v9, :cond_1

    .line 251
    const-string v9, "MotoNetwCtrlr.WifiTile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleUpdateState: Completed: Updated state info: wifiConnected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " wifiNotConnected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " enabledChanging="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " enabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " connected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " filter="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " activityIn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " activityOut="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " label="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " contentDescription="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dualLabelContentDescription="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v1    # "dataActivityDesc":Ljava/lang/String;
    .end local v2    # "enabledChanging":Z
    .end local v3    # "iconId":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "signalContentDescription":Ljava/lang/String;
    .end local v6    # "wifiConnected":Z
    .end local v7    # "wifiName":Ljava/lang/String;
    .end local v8    # "wifiNotConnected":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 161
    .restart local v6    # "wifiConnected":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 162
    .restart local v8    # "wifiNotConnected":Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 169
    .restart local v2    # "enabledChanging":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 170
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 186
    .restart local v3    # "iconId":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :cond_a
    if-eqz v6, :cond_b

    .line 187
    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 188
    iget v3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 189
    iget-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 190
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 195
    .restart local v5    # "signalContentDescription":Ljava/lang/String;
    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityIconId:I

    iput v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    goto/16 :goto_6

    .line 198
    .end local v5    # "signalContentDescription":Ljava/lang/String;
    :cond_b
    if-eqz v8, :cond_c

    .line 199
    const v9, 0x7f02009f

    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 200
    const v3, 0x7f02009f

    .line 201
    const v9, 0x7f0c00e4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 202
    const v9, 0x7f0c005e

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 207
    .restart local v5    # "signalContentDescription":Ljava/lang/String;
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    goto/16 :goto_6

    .line 211
    .end local v5    # "signalContentDescription":Ljava/lang/String;
    :cond_c
    const v9, 0x7f0200ab

    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 212
    const v3, 0x7f0200ab

    .line 213
    const v9, 0x7f0c00e4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 214
    const v9, 0x7f0c005d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .restart local v5    # "signalContentDescription":Ljava/lang/String;
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    goto/16 :goto_6

    .line 229
    :cond_d
    const-string v1, ""

    goto/16 :goto_7
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPointCallback;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

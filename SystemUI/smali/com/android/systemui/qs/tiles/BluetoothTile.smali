.class public Lcom/android/systemui/qs/tiles/BluetoothTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
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
.field private static final BLUETOOTH_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 152
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 46
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/systemui/qs/tiles/BluetoothTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 75
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 77
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11200d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 78
    .local v0, "featureFlag":Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_bt_confirmation_checked"

    invoke-static {v3, v5, v4}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 80
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_CONFIRMATION_DIALOG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "request_connection_type"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-nez v2, :cond_1

    move v3, v4

    :goto_1
    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 96
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showDetail(Z)V

    .line 97
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const v7, 0x7f0c00d0

    .line 101
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothSupported()Z

    move-result v4

    .line 102
    .local v4, "supported":Z
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    .line 103
    .local v3, "enabled":Z
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v1

    .line 104
    .local v1, "connected":Z
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result v2

    .line 105
    .local v2, "connecting":Z
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 106
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 107
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->autoMirrorDrawable:Z

    .line 108
    if-eqz v3, :cond_4

    .line 109
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 110
    if-eqz v1, :cond_2

    .line 111
    const v5, 0x7f020070

    invoke-static {v5}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 112
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00a3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 114
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 125
    :goto_0
    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 135
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 136
    .local v0, "bluetoothName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 137
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0064

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "bluetoothName":Ljava/lang/String;
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/String;

    .line 140
    .restart local v0    # "bluetoothName":Ljava/lang/String;
    :cond_1
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/String;

    .line 141
    return-void

    .line 115
    .end local v0    # "bluetoothName":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 116
    const v5, 0x7f020071

    invoke-static {v5}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 117
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00a2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 119
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_3
    const v5, 0x7f020074

    invoke-static {v5}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 122
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00a1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_4
    const v5, 0x7f020073

    invoke-static {v5}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 130
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

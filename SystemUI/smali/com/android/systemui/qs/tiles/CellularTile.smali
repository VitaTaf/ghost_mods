.class public Lcom/android/systemui/qs/tiles/CellularTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;,
        Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
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
.field private static final CELLULAR_SETTINGS:Landroid/content/Intent;

.field static CHATTY:Z


# instance fields
.field public final CELLULAR_SLOT_ID:Ljava/lang/String;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

.field private final mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

.field private mSubId:I

.field private final mTileIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;I)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;
    .param p2, "tileIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const-string v0, "sub_id"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SLOT_ID:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CellularTile$1;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->getMobileDataController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    iput p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mTileIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const-string v1, "sub_id"

    iget v2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .prologue
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.CellularTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/content/Intent;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CellularTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mTileIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "length":I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/android/systemui/qs/SignalTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .local v0, "phoneCount":I
    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;->isMobileDataSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->showDetail(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v2, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->hasMobileDataFeature()Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoNetwCtrlr.CellularTile"

    const-string v7, "handleUpdateState: Exiting: not visible"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .local v0, "cb":Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    if-nez v0, :cond_2

    sget-boolean v6, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoNetwCtrlr.CellularTile"

    const-string v7, "handleUpdateState: Exiting: CallbackInfo not supplied"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "r":Landroid/content/res/Resources;
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSubId:I

    iget v9, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    if-eq v6, v9, :cond_3

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSubId:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/CellularTile;->setSubId(I)V

    :cond_3
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v6, :cond_8

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    if-gtz v6, :cond_8

    const v3, 0x7f020081

    .local v3, "iconId":I
    :goto_1
    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isBidiDirectionEnabled:Z

    if-eqz v6, :cond_c

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-nez v6, :cond_c

    move v6, v7

    :goto_2
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->autoMirrorDrawable:Z

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isMotoWideIcons:Z

    if-nez v6, :cond_e

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v6, :cond_4

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v6, :cond_d

    :cond_4
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_d

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-eqz v6, :cond_d

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenWifiActive:Z

    if-eqz v6, :cond_d

    :cond_5
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez v6, :cond_d

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    :goto_3
    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    :goto_4
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_12

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    if-eqz v6, :cond_12

    move v6, v7

    :goto_5
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_13

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    if-eqz v6, :cond_13

    move v6, v7

    :goto_6
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneLabel:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingIconId:I

    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isBidiDirectionEnabled:Z

    if-eqz v6, :cond_15

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v6, :cond_6

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v6, :cond_14

    :cond_6
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_14

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    if-lez v6, :cond_14

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-nez v6, :cond_14

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    :goto_7
    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    :goto_8
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v6, :cond_7

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v6, :cond_18

    :cond_7
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_9
    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_1a

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v6, :cond_1a

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .local v5, "signalContentDesc":Ljava/lang/String;
    :goto_a
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_1b

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_1b

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    if-nez v6, :cond_1b

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    .local v2, "dataContentDesc":Ljava/lang/String;
    :goto_b
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_1c

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_1c

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    if-lez v6, :cond_1c

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-nez v6, :cond_1c

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityDescription:Ljava/lang/String;

    .local v1, "dataActivityDesc":Ljava/lang/String;
    :goto_c
    const v6, 0x7f0c009a

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimDescription:Ljava/lang/String;

    aput-object v10, v9, v8

    aput-object v5, v9, v7

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingDescription:Ljava/lang/String;

    aput-object v8, v9, v7

    const/4 v7, 0x3

    aput-object v2, v9, v7

    const/4 v7, 0x4

    aput-object v1, v9, v7

    const/4 v7, 0x5

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    aput-object v8, v9, v7

    invoke-virtual {v4, v6, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    sget-boolean v6, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoNetwCtrlr.CellularTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUpdateState: Completed: Updated state info: iconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isOverlayIconWide="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " autoMirrorDrawable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->autoMirrorDrawable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " overlayIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " filter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " activityIn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " activityOut="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " label="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contentDescription="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "dataActivityDesc":Ljava/lang/String;
    .end local v2    # "dataContentDesc":Ljava/lang/String;
    .end local v3    # "iconId":I
    .end local v5    # "signalContentDesc":Ljava/lang/String;
    :cond_8
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v6, :cond_9

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v6, :cond_a

    :cond_9
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v6, :cond_a

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez v6, :cond_a

    iget v3, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    goto/16 :goto_1

    :cond_a
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v6, :cond_b

    const v3, 0x7f02008f

    goto/16 :goto_1

    :cond_b
    const v3, 0x7f02009a

    goto/16 :goto_1

    .restart local v3    # "iconId":I
    :cond_c
    move v6, v8

    goto/16 :goto_2

    :cond_d
    move v6, v8

    goto/16 :goto_3

    :cond_e
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v6, :cond_f

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v6, :cond_11

    :cond_f
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_11

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-eqz v6, :cond_10

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-eqz v6, :cond_11

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenWifiActive:Z

    if-eqz v6, :cond_11

    :cond_10
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez v6, :cond_11

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    :goto_d
    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    goto/16 :goto_4

    :cond_11
    move v6, v8

    goto :goto_d

    :cond_12
    move v6, v8

    goto/16 :goto_5

    :cond_13
    move v6, v8

    goto/16 :goto_6

    :cond_14
    move v6, v8

    goto/16 :goto_7

    :cond_15
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v6, :cond_16

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v6, :cond_17

    :cond_16
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_17

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    if-lez v6, :cond_17

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-nez v6, :cond_17

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    :goto_e
    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    goto/16 :goto_8

    :cond_17
    move v6, v8

    goto :goto_e

    :cond_18
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v6, :cond_19

    const v6, 0x1040384

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    :cond_19
    const v6, 0x7f0c00de

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    :cond_1a
    const v6, 0x7f0c006a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    .restart local v5    # "signalContentDesc":Ljava/lang/String;
    :cond_1b
    const v6, 0x7f0c0058

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .restart local v2    # "dataContentDesc":Ljava/lang/String;
    :cond_1c
    const-string v1, ""

    goto/16 :goto_c
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mCallback:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V

    goto :goto_0
.end method

.method public setSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const-string v1, "sub_id"

    iget v2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

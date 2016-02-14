.class final Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/CellularTile$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    check-cast v2, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    .local v1, "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1500(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;->getDataUsageInfo(I)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController$DataUsageInfo;

    move-result-object v0

    .local v0, "info":Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController$DataUsageInfo;
    if-nez v0, :cond_1

    :goto_1
    return-object v1

    .end local v0    # "info":Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController$DataUsageInfo;
    .end local v1    # "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$2400(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .restart local v0    # "info":Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController$DataUsageInfo;
    .restart local v1    # "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->bind(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController$DataUsageInfo;)V

    goto :goto_1
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1600()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    const v0, 0x7f0c00fb

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1500(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1500(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;->isMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 8
    .param p1, "state"    # Z

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1700(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .local v1, "featureFlagIndicateOn":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1800(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, "featureFlagIndicateOff":Z
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data_confirmation_checked"

    invoke-static {v3, v4, v6}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_CONFIRMATION_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "request_connection_type"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$2000(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$2100(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$2200(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/systemui/qs/VzwConfirmationStubActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$2300(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1500(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.class final Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDetailAdapter"
.end annotation


# instance fields
.field private mAccessPoints:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/WifiTile$1;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-void
.end method

.method private updateItems()V
    .locals 6

    .prologue
    .line 631
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v4, :cond_0

    .line 655
    :goto_0
    return-void

    .line 632
    :cond_0
    const/4 v3, 0x0

    .line 633
    .local v3, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    if-eqz v4, :cond_5

    .line 634
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    array-length v4, v4

    new-array v3, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 636
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    aget-object v0, v4, v1

    .line 637
    .local v0, "ap":Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;
    new-instance v2, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v2}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 638
    .local v2, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    iput-object v0, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 639
    iget v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;->iconId:I

    iput v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 640
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 641
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-eqz v4, :cond_3

    .line 642
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;->isConfigured:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0c00f4

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    .line 648
    :cond_1
    :goto_3
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_4
    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 651
    aput-object v2, v3, v1

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 642
    :cond_2
    const v4, 0x7f0c00f5

    goto :goto_2

    .line 645
    :cond_3
    iget v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;->networkId:I

    if-ltz v4, :cond_1

    goto :goto_3

    .line 648
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 654
    .end local v0    # "ap":Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x1

    .line 580
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v2, "MotoNetwCtrlr.WifiTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDetailView convertView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    .line 582
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;->scanForAccessPoints()V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    .line 584
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Wifi"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f0200a4

    const v2, 0x7f0c00e8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0

    .line 580
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 563
    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$500()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 559
    const v0, 0x7f0c00e4

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;)V
    .locals 2
    .param p1, "accessPoints"    # [Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 598
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 610
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;

    .line 612
    .local v0, "ap":Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-nez v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;->connect(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    goto :goto_0
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 623
    return-void
.end method

.method public onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 1
    .param p1, "settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 606
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    goto :goto_0
.end method

.method public setToggleState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 573
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.WifiTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToggleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->setWifiEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    .line 576
    return-void
.end method

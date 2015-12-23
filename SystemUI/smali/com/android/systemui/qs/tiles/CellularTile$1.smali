.class Lcom/android/systemui/qs/tiles/CellularTile$1;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 2

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 800
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    const-string v1, "onAirplaneModeChanged"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1300(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 807
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    .line 812
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescription"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescription"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isDataTypeIconWide"    # Z

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 661
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 662
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p3, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 664
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p7, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    .line 666
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    .line 667
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p9, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    .line 670
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    const-string v1, "onMobileDataSignalChanged (Google api)"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$500(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method public onMobileDataSignalChanged(ZZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZII)V
    .locals 4
    .param p1, "mobileUseMotoUI"    # Z
    .param p2, "mobileEnabled"    # Z
    .param p3, "mobileSimIconId"    # I
    .param p4, "mobileSignalIconId"    # I
    .param p5, "mobileRoamingIconId"    # I
    .param p6, "mobileDataTypeIconId"    # I
    .param p7, "mobileDataActivityIconId"    # I
    .param p8, "mobileActivityIn"    # Z
    .param p9, "mobileActivityOut"    # Z
    .param p10, "mobileCarrierDescription"    # Ljava/lang/String;
    .param p11, "mobileSimDescription"    # Ljava/lang/String;
    .param p12, "mobileSignalContentDescription"    # Ljava/lang/String;
    .param p13, "mobileRoamingDescription"    # Ljava/lang/String;
    .param p14, "mobileDataTypeContentDescription"    # Ljava/lang/String;
    .param p15, "mobileDataActivityContentDescription"    # Ljava/lang/String;
    .param p16, "mobileNetworkName"    # Ljava/lang/String;
    .param p17, "mobileNoSim"    # Z
    .param p18, "mobileIsDataTypeIconWide"    # Z
    .param p19, "mobileShowMobileWhenWifiActive"    # Z
    .param p20, "mobileShowMobileWhenNotEnabled"    # Z
    .param p21, "mobileIsBidiDirectionEnabled"    # Z
    .param p22, "mobileIsMotoWideIcons"    # Z
    .param p23, "mobileSubId"    # I
    .param p24, "mobilePhoneIndex"    # I

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mTileIndex:I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$600(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v1

    move/from16 v0, p24

    if-ne v0, v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 722
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p4, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 723
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 724
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p6, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 725
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    .line 726
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p8, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    .line 727
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p9, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    .line 728
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p10, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 729
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p22

    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    .line 732
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p19

    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenWifiActive:Z

    .line 733
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p20

    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    .line 734
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p21

    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isBidiDirectionEnabled:Z

    .line 735
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p22

    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isMotoWideIcons:Z

    .line 737
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p3, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    .line 738
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p5, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingIconId:I

    .line 739
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p7, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    .line 741
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static/range {p23 .. p23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneLabel:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p10, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneDescription:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p11, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimDescription:Ljava/lang/String;

    .line 744
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingDescription:Ljava/lang/String;

    .line 745
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityDescription:Ljava/lang/String;

    .line 746
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p23

    iput v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSubId:I

    .line 747
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p24

    iput v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneIndex:I

    .line 748
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$700(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    move-result-object v1

    move/from16 v0, p23

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->isActiveSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 751
    sget-boolean v1, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    const-string v2, "onMobileDataSignalChanged (Motorola api)"

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$800(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 760
    :cond_1
    return-void

    .line 748
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 766
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 770
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 771
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$700(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;->isActiveSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v4, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v1, :cond_2

    .line 777
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 778
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 780
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean v3, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 781
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1100(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 783
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 786
    :cond_2
    sget-boolean v1, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v1, :cond_3

    .line 787
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    const-string v2, "onNoSimVisibleChanged"

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    .line 793
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 794
    return-void

    :cond_4
    move v1, v2

    .line 772
    goto :goto_0
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "wifiSignalIconId"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    .line 595
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    .line 597
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    const-string v1, "onWifiSignalChanged (Google api)"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$300(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 604
    return-void
.end method

.method public onWifiSignalChanged(ZZZIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "wifiUseMotoUI"    # Z
    .param p2, "wifiEnabled"    # Z
    .param p3, "wifiConnected"    # Z
    .param p4, "wifiSignalIconId"    # I
    .param p5, "wifiActivityIcon"    # I
    .param p6, "wifiActivityIn"    # Z
    .param p7, "wifiActivityOut"    # Z
    .param p8, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p9, "wifiActivityDescription"    # Ljava/lang/String;
    .param p10, "description"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    .line 631
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p3, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    .line 633
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CellularTile;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    const-string v1, "onWifiSignalChanged (Motorola api)"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 640
    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;
.super Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaWifiState"
.end annotation


# instance fields
.field mCurrentContext:Landroid/content/Context;

.field mHasMobileData:Z

.field mQSWifiDataActivityIconId:I

.field mQSWifiDataActivityInBool:Z

.field mQSWifiDataActivityOutBool:Z

.field mQSWifiSignalIconId:I

.field mQSWifiUIModeDataActivity:I

.field mQSWifiUIModeSignal:I

.field mSBWifiDataActivityIconId:I

.field mSBWifiSignalIconId:I

.field mSBWifiUIModeDataActivity:I

.field mSBWifiUIModeSignal:I

.field mWifiActivityEnum:I

.field mWifiContentDescriptionDataActivity:Ljava/lang/String;

.field mWifiContentDescriptionNetworkName:Ljava/lang/String;

.field mWifiContentDescriptionSignal:Ljava/lang/String;

.field mWifiUIModeDataActivity:I

.field mWifiUIModeSignal:I

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V
    .locals 2
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    .prologue
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    .local v0, "state":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->toString(Ljava/lang/StringBuilder;)V

    const-string v0, ",\n WiFi Extension:\n  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ssid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HasMobile="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NetName=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ModeSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getWifiSignalUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SBModeSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getWifiSignalUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SBSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QSModeSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getWifiSignalUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QSSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MsgSig=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ActEnum="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ModeAct="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getWifiActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SBModeAct="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getWifiActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SBAct="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QSModeAct="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getWifiActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QSAct="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QSIn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QSOut="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MsgAct=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

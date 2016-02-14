.class public Lcom/android/systemui/statusbar/MotorolaSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MotorolaSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAirplaneContentDescriptionId:I

.field private mAirplaneIconId:I

.field private mAirplaneView:Landroid/widget/ImageView;

.field private mConfigShowBothWifiAndMobileNetwork:Z

.field private mContext:Landroid/content/Context;

.field private mEndPadding:I

.field private mEndPaddingNothingVisible:I

.field private mIsAirplaneModeEnabled:Z

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field mNC:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

.field private mNoSims:Landroid/widget/ImageView;

.field private mNoSimsVisible:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mSecondaryTelephonyPadding:I

.field private mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field private mWifiActivityIconId:I

.field private mWifiActivityView:Landroid/widget/ImageView;

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiSignalIconId:I

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiSignalView:Landroid/widget/ImageView;

.field private mWifiUseMotoUI:Z

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "MotoSignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNoSimsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpnVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiUseMotoUI:Z

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityIconId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mIsAirplaneModeEnabled:Z

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneContentDescriptionId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWideTypeIconStartPadding:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSecondaryTelephonyPadding:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mEndPadding:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mEndPaddingNothingVisible:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mConfigShowBothWifiAndMobileNetwork:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mIsAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSecondaryTelephonyPadding:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWideTypeIconStartPadding:I

    return v0
.end method

.method private apply()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v5, :cond_f

    iget-object v8, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v5, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v8, "MotoSignalClusterView"

    const-string v9, "vpn: %s"

    new-array v10, v1, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_4

    const-string v5, "VISIBLE"

    :goto_1
    aput-object v5, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalView:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalIconId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalIconId:I

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityIconId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityIconId:I

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    sget-boolean v5, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v8, "MotoSignalClusterView"

    const-string v9, "wifi: %s signalId=%d activityId=%d"

    const/4 v5, 0x3

    new-array v10, v5, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_8

    const-string v5, "VISIBLE"

    :goto_5
    aput-object v5, v10, v6

    iget v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalIconId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v1

    const/4 v5, 0x2

    iget v11, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityIconId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .local v0, "anyMobileVisible":Z
    const/4 v2, 0x0

    .local v2, "firstMobileTypeId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .local v4, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->apply(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$500(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)I

    move-result v2

    const/4 v0, 0x1

    goto :goto_6

    .end local v0    # "anyMobileVisible":Z
    .end local v2    # "firstMobileTypeId":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    :cond_3
    move v5, v7

    goto/16 :goto_0

    :cond_4
    const-string v5, "GONE"

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    const-string v5, "GONE"

    goto :goto_5

    .restart local v0    # "anyMobileVisible":Z
    .restart local v2    # "firstMobileTypeId":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mIsAirplaneModeEnabled:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneContentDescriptionId:I

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneContentDescriptionId:I

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mIsAirplaneModeEnabled:Z

    if-eqz v5, :cond_12

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    if-eqz v0, :cond_b

    if-nez v2, :cond_c

    :cond_b
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_13

    :cond_c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNoSimsVisible:Z

    if-eqz v8, :cond_d

    move v7, v6

    :cond_d
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_e

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    if-nez v5, :cond_e

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mIsAirplaneModeEnabled:Z

    if-nez v5, :cond_e

    if-nez v0, :cond_e

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_14

    .local v1, "anythingVisible":Z
    :cond_e
    :goto_b
    if-eqz v1, :cond_15

    iget v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mEndPadding:I

    :goto_c
    invoke-virtual {p0, v6, v6, v5, v6}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->setPaddingRelative(IIII)V

    .end local v0    # "anyMobileVisible":Z
    .end local v1    # "anythingVisible":Z
    .end local v2    # "firstMobileTypeId":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f
    return-void

    .restart local v0    # "anyMobileVisible":Z
    .restart local v2    # "firstMobileTypeId":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_10
    const/4 v5, 0x0

    goto :goto_7

    :cond_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_13
    iget-object v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_14
    move v1, v6

    goto :goto_b

    .restart local v1    # "anythingVisible":Z
    :cond_15
    iget v5, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mEndPaddingNothingVisible:I

    goto :goto_c
.end method

.method private getOrInflateState(I)Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .locals 3
    .param p1, "mobileSubId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .local v1, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSubId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1900(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .end local v1    # "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    move-result-object v1

    goto :goto_0
.end method

.method private inflatePhoneState(I)Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .locals 3
    .param p1, "mobileSubId"    # I

    .prologue
    new-instance v0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;ILandroid/content/Context;)V

    .local v0, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .local v1, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v1    # "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v2, 0x7f0f00dd

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpn:Landroid/widget/ImageView;

    const v2, 0x7f0f00de

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0f00df

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalView:Landroid/widget/ImageView;

    const v2, 0x7f0f0159

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    const v2, 0x7f0f00e4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    const v2, 0x7f0f00e2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNoSims:Landroid/widget/ImageView;

    const v2, 0x7f0f00e3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    const v2, 0x7f0f00e0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    const v2, 0x7f0f00e1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .local v1, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .end local v1    # "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWideTypeIconStartPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSecondaryTelephonyPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mEndPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mEndPaddingNothingVisible:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mConfigShowBothWifiAndMobileNetwork:Z

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .local v1, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$2000(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$2000(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$2100(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$2100(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v1    # "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIsAirplaneMode(ZII)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I
    .param p3, "contentDescriptionId"    # I

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mIsAirplaneModeEnabled:Z

    iput p2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneIconId:I

    iput p3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mAirplaneContentDescriptionId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "typeIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;
    .param p5, "typeContentDescription"    # Ljava/lang/String;
    .param p6, "mobileIsTypeIconWide"    # Z
    .param p7, "mobileSubId"    # I

    .prologue
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->getOrInflateState(I)Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    move-result-object v0

    .local v0, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$302(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalIconId:I
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$402(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$502(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalContentDescription:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$602(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeContentDescription:Ljava/lang/String;
    invoke-static {v0, p5}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$702(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z
    invoke-static {v0, p6}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$802(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

.method public setMobileDataIndicators(ZZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZI)V
    .locals 2
    .param p1, "mobileUseMotoUI"    # Z
    .param p2, "mobileVisible"    # Z
    .param p3, "mobileSimIconId"    # I
    .param p4, "mobileSignalIconId"    # I
    .param p5, "mobileRoamingIconId"    # I
    .param p6, "mobileDataTypeIconId"    # I
    .param p7, "mobileDataActivityIconId"    # I
    .param p8, "mobilePhoneDescription"    # Ljava/lang/String;
    .param p9, "mobileSimDescription"    # Ljava/lang/String;
    .param p10, "mobileSignalDescription"    # Ljava/lang/String;
    .param p11, "mobileRoamingDescription"    # Ljava/lang/String;
    .param p12, "mobileDataTypeDescription"    # Ljava/lang/String;
    .param p13, "mobileDataActivityDescription"    # Ljava/lang/String;
    .param p14, "mobileIsRoaming"    # Z
    .param p15, "mobileIsTypeIconWide"    # Z
    .param p16, "mobileIsBidiDirectionEnabled"    # Z
    .param p17, "mobileSubId"    # I

    .prologue
    move/from16 v0, p17

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->getOrInflateState(I)Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    move-result-object v1

    .local v1, "state":Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileUseMotoUI:Z
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$902(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$302(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimIconId:I
    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1002(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalIconId:I
    invoke-static {v1, p4}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$402(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingIconId:I
    invoke-static {v1, p5}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1102(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I
    invoke-static {v1, p6}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$502(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityIconId:I
    invoke-static {v1, p7}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1202(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mobileCarrierDescription:Ljava/lang/String;
    invoke-static {v1, p8}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1302(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimContentDescription:Ljava/lang/String;
    invoke-static {v1, p9}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1402(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalContentDescription:Ljava/lang/String;
    invoke-static {v1, p10}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$602(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingContentDescription:Ljava/lang/String;
    invoke-static {v1, p11}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1502(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeContentDescription:Ljava/lang/String;
    invoke-static {v1, p12}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$702(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityContentDescription:Ljava/lang/String;
    invoke-static {v1, p13}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1602(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    move/from16 v0, p14

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileIsRoaming:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1702(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z

    move/from16 v0, p15

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$802(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z

    move/from16 v0, p16

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileIsBidiDirectionEnabled:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->access$1802(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    return-void
.end method

.method public setNoSims(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mNoSimsVisible:Z

    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpnVisible:Z

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "signalIcon"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiUseMotoUI:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityIconId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

.method public setWifiIndicators(ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wifiUseMotoUI"    # Z
    .param p2, "wifiVisible"    # Z
    .param p3, "wifiSignalIcon"    # I
    .param p4, "wifiActivityIcon"    # I
    .param p5, "wifiSignalDescription"    # Ljava/lang/String;
    .param p6, "wifiActivityDescription"    # Ljava/lang/String;
    .param p7, "wifiNetworkName"    # Ljava/lang/String;

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiUseMotoUI:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiSignalIconId:I

    iput p4, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiActivityIconId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V

    return-void
.end method

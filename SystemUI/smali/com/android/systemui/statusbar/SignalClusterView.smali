.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescriptionId:I

.field private mAirplaneIconId:I

.field private mEndPadding:I

.field private mEndPaddingNothingVisible:I

.field private mIsAirplaneMode:Z

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field mNoSims:Landroid/widget/ImageView;

.field private mNoSimsVisible:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mSecondaryTelephonyPadding:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 58
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 60
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 61
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescriptionId:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    .line 75
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 76
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 77
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 78
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 113
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method private apply()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 443
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 630
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 456
    const-string v8, "SignalClusterView"

    const-string v9, "vpn: %s"

    new-array v10, v1, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_5

    const-string v5, "VISIBLE"

    :goto_2
    aput-object v5, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_6

    .line 472
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 491
    const-string v8, "SignalClusterView"

    const-string v9, "wifi: %s sig=%d"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_7

    const-string v5, "VISIBLE"

    :goto_4
    aput-object v5, v10, v6

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_2
    const/4 v0, 0x0

    .line 506
    .local v0, "anyMobileVisible":Z
    const/4 v2, 0x0

    .line 510
    .local v2, "firstMobileTypeId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 513
    .local v4, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 519
    if-nez v0, :cond_3

    .line 522
    # getter for: Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$500(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    .line 523
    const/4 v0, 0x1

    goto :goto_5

    .end local v0    # "anyMobileVisible":Z
    .end local v2    # "firstMobileTypeId":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_4
    move v5, v7

    .line 449
    goto :goto_1

    .line 456
    :cond_5
    const-string v5, "GONE"

    goto :goto_2

    .line 485
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 491
    :cond_7
    const-string v5, "GONE"

    goto :goto_4

    .line 530
    .restart local v0    # "anyMobileVisible":Z
    .restart local v2    # "firstMobileTypeId":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_e

    .line 534
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 538
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescriptionId:I

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescriptionId:I

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    :goto_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_f

    .line 564
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 576
    :goto_8
    if-eqz v0, :cond_9

    if-nez v2, :cond_a

    :cond_9
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_10

    :cond_a
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_10

    .line 590
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 602
    :goto_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v8, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v5, :cond_c

    if-nez v0, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_11

    .line 620
    .local v1, "anythingVisible":Z
    :cond_c
    :goto_a
    if-eqz v1, :cond_12

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    :goto_b
    invoke-virtual {p0, v6, v6, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->setPaddingRelative(IIII)V

    goto/16 :goto_0

    .line 538
    .end local v1    # "anythingVisible":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_6

    .line 552
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 570
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 596
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_11
    move v1, v6

    .line 608
    goto :goto_a

    .line 620
    .restart local v1    # "anythingVisible":Z
    :cond_12
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    goto :goto_b
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 355
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 371
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 376
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 176
    const v2, 0x7f0f00dd

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 177
    const v2, 0x7f0f00de

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 178
    const v2, 0x7f0f00df

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 179
    const v2, 0x7f0f00e4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 180
    const v2, 0x7f0f00e2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 181
    const v2, 0x7f0f00e3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 182
    const v2, 0x7f0f00e0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 183
    const v2, 0x7f0f00e1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 189
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    # getter for: Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 192
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 193
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 199
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 200
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 201
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 204
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 206
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 207
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 170
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 405
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    # getter for: Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 408
    # getter for: Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    :cond_2
    # getter for: Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1100(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 416
    # getter for: Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1100(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 422
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 431
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

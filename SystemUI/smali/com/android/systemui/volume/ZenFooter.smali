.class public Lcom/android/systemui/volume/ZenFooter;
.super Landroid/widget/LinearLayout;
.source "ZenFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenFooter$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mFooterExpanded:Z

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mSecondaryAlpha:F

.field private mSummary:Landroid/view/View;

.field private mSummaryLine1:Landroid/widget/TextView;

.field private mSummaryLine2:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Landroid/view/View;

.field private mSwitchBarIcon:Landroid/view/View;

.field private mZen:I

.field private mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

.field private mZenModePanelButtons:Landroid/view/View;

.field private mZenModePanelDoneButton:Landroid/view/View;

.field private mZenModePanelMoreButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 215
    new-instance v0, Lcom/android/systemui/volume/ZenFooter$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenFooter$5;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0129

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenFooter;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSecondaryAlpha:F

    .line 70
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/ZenFooter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setZen(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/ZenFooter;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/ZenFooter$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/volume/ZenFooter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/ZenFooter;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setFooterExpanded(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 78
    .local v0, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 79
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private isZenAlarms()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenNone()Z
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenPriority()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    iget v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0
.end method

.method private setFooterExpanded(Z)Z
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 183
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenFooter$Callback;->onFooterExpanded()V

    .line 188
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setZen(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v0, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/ZenFooter$Callback;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p2, "callback"    # Lcom/android/systemui/volume/ZenFooter$Callback;

    .prologue
    .line 98
    iput-object p2, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setEmbedded(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$1;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBar:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$2;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelMoreButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$3;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelDoneButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$4;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 138
    return-void
.end method

.method public isFooterExpanded()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    return v0
.end method

.method public isZen()Z
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 179
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setFooterExpanded(Z)Z

    .line 173
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 85
    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBar:Landroid/view/View;

    .line 86
    const v0, 0x7f0f0177

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBarIcon:Landroid/view/View;

    .line 87
    const v0, 0x7f0f0178

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    .line 88
    const v0, 0x7f0f0138

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 89
    const v0, 0x7f0f017c

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelButtons:Landroid/view/View;

    .line 90
    const v0, 0x7f0f017d

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelMoreButton:Landroid/view/View;

    .line 91
    const v0, 0x7f0f017e

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelDoneButton:Landroid/view/View;

    .line 92
    const v0, 0x7f0f0179

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummary:Landroid/view/View;

    .line 93
    const v0, 0x7f0f017a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0f017b

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->isZen()Z

    move-result v0

    .line 197
    .local v0, "isZen":Z
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 199
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenFooter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    iget-object v6, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 201
    iget-object v6, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 202
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSummary:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-nez v6, :cond_3

    :goto_2
    invoke-static {v3, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 203
    iget-object v4, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBarIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c011d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "line1":Ljava/lang/String;
    :cond_0
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 210
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/service/notification/ZenModeConfig;->getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;I)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "line2":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .end local v1    # "line1":Ljava/lang/String;
    .end local v2    # "line2":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 200
    goto :goto_0

    :cond_2
    move v3, v5

    .line 201
    goto :goto_1

    :cond_3
    move v4, v5

    .line 202
    goto :goto_2

    .line 203
    :cond_4
    iget v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSecondaryAlpha:F

    goto :goto_3

    .line 204
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c028c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c011c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

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
    .line 41
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
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 197
    new-instance v0, Lcom/android/systemui/volume/ZenFooter$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenFooter$5;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0129

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenFooter;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSecondaryAlpha:F

    .line 66
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/ZenFooter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setZen(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/ZenFooter;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/ZenFooter$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/volume/ZenFooter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/ZenFooter;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setFooterExpanded(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 73
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 74
    .local v0, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 75
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private isZenNone()Z
    .locals 2

    .prologue
    .line 150
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

    .line 146
    iget v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFooterExpanded(Z)Z
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 168
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenFooter$Callback;->onFooterExpanded()V

    .line 173
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setZen(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v0, p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/ZenFooter$Callback;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p2, "callback"    # Lcom/android/systemui/volume/ZenFooter$Callback;

    .prologue
    .line 94
    iput-object p2, p0, Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setEmbedded(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$1;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBar:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$2;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelMoreButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$3;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelDoneButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$4;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 133
    return-void
.end method

.method public isFooterExpanded()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    return v0
.end method

.method public isZen()Z
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

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
    .line 162
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setFooterExpanded(Z)Z

    .line 158
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBar:Landroid/view/View;

    .line 82
    const v0, 0x7f0f0177

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBarIcon:Landroid/view/View;

    .line 83
    const v0, 0x7f0f0178

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    .line 84
    const v0, 0x7f0f0138

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 85
    const v0, 0x7f0f017c

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelButtons:Landroid/view/View;

    .line 86
    const v0, 0x7f0f017d

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelMoreButton:Landroid/view/View;

    .line 87
    const v0, 0x7f0f017e

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelDoneButton:Landroid/view/View;

    .line 88
    const v0, 0x7f0f0179

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummary:Landroid/view/View;

    .line 89
    const v0, 0x7f0f017a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0f017b

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->isZen()Z

    move-result v0

    .line 182
    .local v0, "isZen":Z
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 184
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenFooter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v5, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 186
    iget-object v5, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanelButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 187
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummary:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenFooter;->mFooterExpanded:Z

    if-nez v5, :cond_3

    :goto_2
    invoke-static {v2, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 188
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSwitchBarIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c011d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "line1":Ljava/lang/String;
    :cond_0
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v3}, Lcom/android/systemui/volume/ZenModePanel;->getExitConditionText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 195
    return-void

    .end local v1    # "line1":Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 185
    goto :goto_0

    :cond_2
    move v2, v4

    .line 186
    goto :goto_1

    :cond_3
    move v3, v4

    .line 187
    goto :goto_2

    .line 188
    :cond_4
    iget v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSecondaryAlpha:F

    goto :goto_3

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c011c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

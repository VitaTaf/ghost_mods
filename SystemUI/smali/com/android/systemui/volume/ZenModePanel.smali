.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/LinearLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;,
        Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttached:Z

.field private mAttachedZen:I

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mConditions:[Landroid/service/notification/Condition;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mCountdownConditionSupported:Z

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExpanded:Z

.field private mFirstConditionIndex:I

.field private final mForeverId:Landroid/net/Uri;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field private final mIconPulser:Lcom/android/systemui/volume/IconPulser;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private mMaxConditions:I

.field private mMaxOptionalConditions:I

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

.field private mRequestingConditions:Z

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private mTag:Ljava/lang/String;

.field private mTimeCondition:Landroid/service/notification/Condition;

.field private final mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

.field private mZenAlarmWarning:Landroid/widget/TextView;

.field private mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field private final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenConditions:Landroid/widget/LinearLayout;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionCustomize:Landroid/view/View;

.field private mZenIntroductionMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    .line 71
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_0
    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 74
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 75
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 76
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void

    .line 71
    :cond_0
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xf
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0xf0
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    .line 90
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZenModePanel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 824
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$9;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 954
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$10;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 979
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$11;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 126
    new-instance v0, Lcom/android/systemui/volume/IconPulser;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/IconPulser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mIconPulser:Lcom/android/systemui/volume/IconPulser;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    .line 128
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "new ZenModePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/ZenModePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/ZenModePanel;I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/ZenModePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/ZenModePanel;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # [Landroid/service/notification/Condition;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic access$2400()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/ZenModePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    const/4 v5, 0x0

    .line 731
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 733
    .local v1, "zen":I
    packed-switch v1, :pswitch_data_0

    .line 748
    :goto_0
    return-void

    .line 735
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c011d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "modeText":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0152

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 738
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c011c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 739
    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_1

    .line 741
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c028c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_1

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;)V
    .locals 21
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "row"    # Landroid/view/View;

    .prologue
    .line 616
    if-nez p1, :cond_0

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "condition must not be null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 617
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/service/notification/Condition;->state:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v8, 0x1

    .line 618
    .local v8, "enabled":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-object/from16 v13, v18

    .line 620
    .local v13, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 621
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    const/4 v9, 0x1

    .line 622
    .local v9, "first":Z
    :goto_2
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 623
    const v18, 0x1020001

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 625
    :cond_1
    move-object/from16 v0, p1

    iput-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 626
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v7

    .line 627
    .local v7, "conditionId":Landroid/net/Uri;
    sget-boolean v18, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bind i="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " first="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " condition="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_2
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    move/from16 v18, v0

    if-eqz v18, :cond_e

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v18

    if-eqz v18, :cond_e

    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_4
    const/4 v6, 0x1

    .line 634
    .local v6, "checked":Z
    :goto_3
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v18

    move/from16 v0, v18

    if-eq v6, v0, :cond_6

    .line 635
    sget-boolean v18, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bind checked="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " condition="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_5
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 638
    :cond_6
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui/volume/ZenModePanel$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v13}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 655
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 656
    const v18, 0x1020002

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    .line 658
    :cond_7
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 659
    const v18, 0x1020014

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 661
    :cond_8
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 662
    const v18, 0x1020015

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    .line 664
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_f

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 666
    .local v10, "line1":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 667
    .local v11, "line2":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 669
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    :goto_5
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 675
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v8, :cond_11

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 677
    const v18, 0x1020019

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 678
    .local v4, "button1":Landroid/widget/ImageView;
    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    const v18, 0x102001a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 686
    .local v5, "button2":Landroid/widget/ImageView;
    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui/volume/ZenModePanel$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 700
    .local v16, "time":J
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_19

    .line 701
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    .line 704
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 714
    :goto_9
    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_a
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 715
    invoke-virtual {v5}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_18

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_b
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 721
    :goto_c
    if-eqz v9, :cond_a

    .line 722
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 723
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 727
    :cond_a
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    return-void

    .line 617
    .end local v4    # "button1":Landroid/widget/ImageView;
    .end local v5    # "button2":Landroid/widget/ImageView;
    .end local v6    # "checked":Z
    .end local v7    # "conditionId":Landroid/net/Uri;
    .end local v8    # "enabled":Z
    .end local v9    # "first":Z
    .end local v10    # "line1":Ljava/lang/String;
    .end local v11    # "line2":Ljava/lang/String;
    .end local v13    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .end local v16    # "time":J
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 618
    .restart local v8    # "enabled":Z
    :cond_c
    new-instance v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>(Lcom/android/systemui/volume/ZenModePanel$1;)V

    goto/16 :goto_1

    .line 621
    .restart local v13    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 630
    .restart local v7    # "conditionId":Landroid/net/Uri;
    .restart local v9    # "first":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 664
    .restart local v6    # "checked":Z
    :cond_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto/16 :goto_4

    .line 671
    .restart local v10    # "line1":Ljava/lang/String;
    .restart local v11    # "line2":Ljava/lang/String;
    :cond_10
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    iget-object v0, v13, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 675
    :cond_11
    const v18, 0x3ecccccd    # 0.4f

    goto/16 :goto_6

    .line 704
    .restart local v4    # "button1":Landroid/widget/ImageView;
    .restart local v5    # "button2":Landroid/widget/ImageView;
    .restart local v16    # "time":J
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 705
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 707
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v16, v18

    .line 708
    .local v14, "span":J
    sget v18, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v19, 0xea60

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v14, v18

    if-lez v18, :cond_15

    const/16 v18, 0x1

    :goto_d
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    invoke-static/range {v18 .. v20}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v12

    .line 711
    .local v12, "maxCondition":Landroid/service/notification/Condition;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    const/16 v18, 0x1

    :goto_e
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_9

    .line 708
    .end local v12    # "maxCondition":Landroid/service/notification/Condition;
    :cond_15
    const/16 v18, 0x0

    goto :goto_d

    .line 711
    .restart local v12    # "maxCondition":Landroid/service/notification/Condition;
    :cond_16
    const/16 v18, 0x0

    goto :goto_e

    .line 714
    .end local v12    # "maxCondition":Landroid/service/notification/Condition;
    .end local v14    # "span":J
    :cond_17
    const/high16 v18, 0x3f000000    # 0.5f

    goto/16 :goto_a

    .line 715
    :cond_18
    const/high16 v18, 0x3f000000    # 0.5f

    goto/16 :goto_b

    .line 717
    :cond_19
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 718
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c
.end method

.method private checkForAttachedZenChange()V
    .locals 4

    .prologue
    .line 253
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 254
    .local v0, "selectedZen":I
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_2

    .line 256
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->trackNoneSelected()V

    .line 261
    :cond_2
    return-void
.end method

.method private computeAlarmWarningText(Z)Ljava/lang/String;
    .locals 20
    .param p1, "zenNone"    # Z

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    const/16 v16, 0x0

    .line 476
    :goto_0
    return-object v16

    .line 452
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 453
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v4

    .line 454
    .local v4, "nextAlarm":J
    cmp-long v16, v4, v6

    if-gez v16, :cond_1

    .line 455
    const/16 v16, 0x0

    goto :goto_0

    .line 457
    :cond_1
    const/4 v13, 0x0

    .line 458
    .local v13, "warningRes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 459
    :cond_2
    const v13, 0x7f0c015f

    .line 466
    :cond_3
    :goto_1
    if-nez v13, :cond_5

    .line 467
    const/16 v16, 0x0

    goto :goto_0

    .line 461
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 462
    .local v14, "time":J
    cmp-long v16, v14, v6

    if-lez v16, :cond_3

    cmp-long v16, v4, v14

    if-gez v16, :cond_3

    .line 463
    const v13, 0x7f0c0115

    goto :goto_1

    .line 469
    .end local v14    # "time":J
    :cond_5
    sub-long v16, v4, v6

    const-wide/32 v18, 0x5265c00

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    const/4 v10, 0x1

    .line 470
    .local v10, "soon":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    invoke-static/range {v16 .. v17}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v3

    .line 471
    .local v3, "is24":Z
    if-eqz v10, :cond_8

    if-eqz v3, :cond_7

    const-string v9, "Hm"

    .line 472
    .local v9, "skeleton":Ljava/lang/String;
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, "pattern":Ljava/lang/String;
    invoke-static {v8, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 474
    .local v2, "formattedTime":Ljava/lang/CharSequence;
    if-eqz v10, :cond_a

    const v12, 0x7f0c0160

    .line 475
    .local v12, "templateRes":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 476
    .local v11, "template":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 469
    .end local v2    # "formattedTime":Ljava/lang/CharSequence;
    .end local v3    # "is24":Z
    .end local v8    # "pattern":Ljava/lang/String;
    .end local v9    # "skeleton":Ljava/lang/String;
    .end local v10    # "soon":Z
    .end local v11    # "template":Ljava/lang/String;
    .end local v12    # "templateRes":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 471
    .restart local v3    # "is24":Z
    .restart local v10    # "soon":Z
    :cond_7
    const-string v9, "hma"

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    const-string v9, "EEEHm"

    goto :goto_3

    :cond_9
    const-string v9, "EEEhma"

    goto :goto_3

    .line 474
    .restart local v2    # "formattedTime":Ljava/lang/CharSequence;
    .restart local v8    # "pattern":Ljava/lang/String;
    .restart local v9    # "skeleton":Ljava/lang/String;
    :cond_a
    const v12, 0x7f0c0161

    goto :goto_4
.end method

.method private confirmZenIntroduction()V
    .locals 4

    .prologue
    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->prefKeyForConfirmation(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "prefKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmZenIntroduction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 198
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 347
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private ensureSelection()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 583
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v4

    .line 584
    .local v4, "visibleConditions":I
    if-nez v4, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 586
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v3

    .line 587
    .local v3, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 588
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not selecting a default, checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 592
    .end local v3    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    .line 593
    .local v1, "foreverTag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v1, :cond_0

    .line 594
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v6, "Selecting a default"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->getMinuteIndex()I

    move-result v0

    .line 596
    .local v0, "favoriteIndex":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-nez v5, :cond_6

    .line 597
    :cond_5
    iget-object v5, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 599
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v6, v6, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 601
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 602
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 603
    invoke-direct {p0, v8}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private fireExpanded()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    .line 822
    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    .line 816
    :cond_0
    return-void
.end method

.method private forever()Landroid/service/notification/Condition;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 553
    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x1

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private static foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 558
    const v0, 0x1040694

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 335
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedCondition()Landroid/service/notification/Condition;
    .locals 4

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 411
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 412
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 413
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 417
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :goto_1
    return-object v3

    .line 411
    .restart local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSelectedZen(I)I
    .locals 2
    .param p1, "defValue"    # I

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "zen":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "zen":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1    # "defValue":I
    :cond_0
    return p1
.end method

.method private getVisibleConditions()I
    .locals 4

    .prologue
    .line 566
    const/4 v2, 0x0

    .line 567
    .local v2, "rt":I
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 568
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 569
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 571
    :cond_1
    return v2
.end method

.method private handleExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 6
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 397
    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExitConditionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 399
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 400
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 401
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_1

    .line 402
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 399
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_2
    return-void
.end method

.method private handleUpdateConditions()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 525
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v3}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->pendingUpdateConditions()V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v3, :cond_4

    move v0, v2

    .line 530
    .local v0, "conditionCount":I
    :goto_1
    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateConditions conditionCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 534
    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 538
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 539
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mFirstConditionIndex:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 529
    .end local v0    # "conditionCount":I
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v3

    goto :goto_1

    .line 542
    .restart local v0    # "conditionCount":I
    .restart local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_3
    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mFirstConditionIndex:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_6

    .line 544
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 543
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 547
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    goto/16 :goto_0
.end method

.method private handleUpdateConditions([Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->trimConditions([Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p1

    .line 493
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 495
    .local v0, "count":I
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateConditions unchanged conditionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return-void

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v1

    goto :goto_0

    .line 498
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    goto :goto_1
.end method

.method private handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 374
    .local v1, "zen":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    .line 375
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 376
    .local v0, "c":Landroid/service/notification/Condition;
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V

    .line 377
    return-void

    .line 373
    .end local v0    # "c":Landroid/service/notification/Condition;
    .end local v1    # "zen":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 375
    .restart local v1    # "zen":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleUpdateZen(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 380
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, p1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 382
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    .line 387
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedCondition()Landroid/service/notification/Condition;

    move-result-object v0

    .line 389
    .local v0, "selected":Landroid/service/notification/Condition;
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 393
    .end local v0    # "selected":Landroid/service/notification/Condition;
    :cond_1
    return-void
.end method

.method private hideAllConditions()V
    .locals 4

    .prologue
    .line 575
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 576
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    :cond_0
    return-void
.end method

.method private static isCountdown(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p0, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 608
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 2
    .param p1, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 612
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V
    .locals 18
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z

    .prologue
    .line 751
    const/4 v14, 0x0

    .line 752
    .local v14, "newCondition":Landroid/service/notification/Condition;
    sget-object v2, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v10, v2

    .line 753
    .local v10, "N":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_6

    .line 755
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v11

    .line 756
    .local v11, "conditionId":Landroid/net/Uri;
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 757
    .local v16, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 758
    .local v6, "now":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_2

    .line 759
    if-eqz p3, :cond_4

    move v13, v12

    .line 760
    .local v13, "j":I
    :goto_1
    sget-object v2, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v5, v2, v13

    .line 761
    .local v5, "bucketMinutes":I
    const v2, 0xea60

    mul-int/2addr v2, v5

    int-to-long v8, v2

    add-long v3, v6, v8

    .line 762
    .local v3, "bucketTime":J
    if-eqz p3, :cond_0

    cmp-long v2, v3, v16

    if-gtz v2, :cond_1

    :cond_0
    if-nez p3, :cond_5

    cmp-long v2, v3, v16

    if-gez v2, :cond_5

    .line 763
    :cond_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIJIZ)Landroid/service/notification/Condition;

    move-result-object v14

    .line 770
    .end local v3    # "bucketTime":J
    .end local v5    # "bucketMinutes":I
    .end local v13    # "j":I
    :cond_2
    if-nez v14, :cond_3

    .line 771
    sget v2, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v8, v8, v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v2, v8, v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    .line 781
    .end local v6    # "now":J
    .end local v11    # "conditionId":Landroid/net/Uri;
    .end local v12    # "i":I
    .end local v16    # "time":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 783
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .line 786
    return-void

    .line 759
    .restart local v6    # "now":J
    .restart local v11    # "conditionId":Landroid/net/Uri;
    .restart local v12    # "i":I
    .restart local v16    # "time":J
    :cond_4
    add-int/lit8 v2, v10, -0x1

    sub-int v13, v2, v12

    goto :goto_1

    .line 758
    .restart local v3    # "bucketTime":J
    .restart local v5    # "bucketMinutes":I
    .restart local v13    # "j":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 777
    .end local v3    # "bucketTime":J
    .end local v5    # "bucketMinutes":I
    .end local v6    # "now":J
    .end local v11    # "conditionId":Landroid/net/Uri;
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v16    # "time":J
    :cond_6
    const/4 v8, 0x0

    add-int/lit8 v9, v10, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eqz p3, :cond_7

    const/4 v2, 0x1

    :goto_3
    add-int/2addr v2, v15

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v8, v8, v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v2, v8, v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    goto :goto_2

    .line 777
    :cond_7
    const/4 v2, -0x1

    goto :goto_3
.end method

.method private static parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 480
    if-nez p1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-object v0

    .line 481
    :cond_1
    iget-object v3, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 482
    .local v1, "time":J
    cmp-long v3, v1, v6

    if-eqz v3, :cond_0

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 484
    .local v4, "now":J
    sub-long v8, v1, v4

    .line 485
    .local v8, "span":J
    cmp-long v3, v8, v6

    if-lez v3, :cond_0

    sget v3, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const v6, 0xea60

    mul-int/2addr v3, v6

    int-to-long v6, v3

    cmp-long v3, v8, v6

    if-gtz v3, :cond_0

    .line 486
    long-to-float v0, v8

    const v3, 0x476a6000    # 60000.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIJIZ)Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private static prefKeyForConfirmation(I)Ljava/lang/String;
    .locals 1
    .param p0, "zen"    # I

    .prologue
    .line 202
    packed-switch p0, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    const-string v0, "DndConfirmedPriorityIntroduction"

    goto :goto_0

    .line 206
    :pswitch_1
    const-string v0, "DndConfirmedSilenceIntroduction"

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/service/notification/Condition;
    .param p1, "rhs"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v3, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 5
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v4, -0x1

    .line 789
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-nez v1, :cond_3

    .line 791
    :cond_1
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "Ignoring condition selection outside of manual zen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_2
    :goto_0
    return-void

    .line 794
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .line 795
    .local v0, "realConditionId":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v1, :cond_4

    .line 796
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 803
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 804
    if-nez v0, :cond_6

    .line 805
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    .line 809
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 806
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v1, v4, :cond_5

    .line 807
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    goto :goto_1
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 330
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    goto :goto_0
.end method

.method private setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    .line 270
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    goto :goto_0
.end method

.method private setRequestingConditions(Z)V
    .locals 3
    .param p1, "requesting"    # Z

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-ne v0, p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 277
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestingConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    .line 279
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_2

    .line 280
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 287
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-eqz v0, :cond_5

    .line 288
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_4

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 296
    :goto_1
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    goto :goto_0

    .line 292
    :cond_4
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 293
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v1, v1, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    goto :goto_1

    .line 300
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    goto :goto_0
.end method

.method private setSessionExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSessionExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    goto :goto_0
.end method

.method private trimConditions([Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 6
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 503
    if-eqz p1, :cond_0

    array-length v4, p1

    iget v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxOptionalConditions:I

    if-gt v4, v5, :cond_2

    :cond_0
    move-object v3, p1

    .line 521
    :cond_1
    :goto_0
    return-object v3

    .line 508
    :cond_2
    const/4 v1, -0x1

    .line 509
    .local v1, "found":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 510
    aget-object v0, p1, v2

    .line 511
    .local v0, "c":Landroid/service/notification/Condition;
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {v4, v0}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 512
    move v1, v2

    .line 516
    .end local v0    # "c":Landroid/service/notification/Condition;
    :cond_3
    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxOptionalConditions:I

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/Condition;

    .line 517
    .local v3, "rt":[Landroid/service/notification/Condition;
    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxOptionalConditions:I

    if-lt v1, v4, :cond_1

    .line 519
    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxOptionalConditions:I

    add-int/lit8 v4, v4, -0x1

    aget-object v5, p1, v1

    aput-object v5, v3, v4

    goto :goto_0

    .line 509
    .end local v3    # "rt":[Landroid/service/notification/Condition;
    .restart local v0    # "c":Landroid/service/notification/Condition;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateWidgets()V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 426
    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v6}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->pendingUpdateWidgets()V

    .line 446
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v2

    .line 431
    .local v2, "zen":I
    if-ne v2, v0, :cond_4

    move v3, v0

    .line 432
    .local v3, "zenImportant":Z
    :goto_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_5

    move v4, v0

    .line 433
    .local v4, "zenNone":Z
    :goto_2
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    # getter for: Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z
    invoke-static {v6}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$300(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    # getter for: Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z
    invoke-static {v6}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$400(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 436
    .local v0, "introduction":Z
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-boolean v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-eqz v6, :cond_7

    move v6, v7

    :goto_4
    invoke-virtual {v8, v6}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 437
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    if-eqz v0, :cond_8

    move v6, v5

    :goto_5
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 438
    if-eqz v0, :cond_3

    .line 439
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    const v6, 0x7f0c0291

    :goto_6
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/view/View;

    if-eqz v3, :cond_a

    move v6, v5

    :goto_7
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->computeAlarmWarningText(Z)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "warning":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    :goto_8
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "introduction":Z
    .end local v1    # "warning":Ljava/lang/String;
    .end local v3    # "zenImportant":Z
    .end local v4    # "zenNone":Z
    :cond_4
    move v3, v5

    .line 431
    goto :goto_1

    .restart local v3    # "zenImportant":Z
    :cond_5
    move v4, v5

    .line 432
    goto :goto_2

    .restart local v4    # "zenNone":Z
    :cond_6
    move v0, v5

    .line 433
    goto :goto_3

    .restart local v0    # "introduction":Z
    :cond_7
    move v6, v5

    .line 436
    goto :goto_4

    :cond_8
    move v6, v7

    .line 437
    goto :goto_5

    .line 439
    :cond_9
    const v6, 0x7f0c027d

    goto :goto_6

    :cond_a
    move v6, v7

    .line 441
    goto :goto_7

    .restart local v1    # "warning":Ljava/lang/String;
    :cond_b
    move v5, v7

    .line 444
    goto :goto_8
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 7
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    const/4 v3, 0x0

    .line 305
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 306
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isCountdownConditionSupported()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    .line 307
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 308
    .local v0, "countdownDelta":I
    :goto_0
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mFirstConditionIndex:I

    .line 309
    add-int/lit8 v2, v0, 0x1

    .line 310
    .local v2, "minConditions":I
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/16 v5, 0x64

    invoke-static {v4, v2, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxConditions:I

    .line 312
    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxConditions:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxOptionalConditions:I

    .line 313
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mMaxConditions:I

    if-ge v1, v4, :cond_1

    .line 314
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040053

    invoke-virtual {v5, v6, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "countdownDelta":I
    .end local v1    # "i":I
    .end local v2    # "minConditions":I
    :cond_0
    move v0, v3

    .line 307
    goto :goto_0

    .line 316
    .restart local v0    # "countdownDelta":I
    .restart local v1    # "i":I
    .restart local v2    # "minConditions":I
    :cond_1
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 317
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 318
    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init mExitCondition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    .line 320
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 321
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 214
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 215
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    .line 217
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 218
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 219
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 222
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 223
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->updateLocale()V

    .line 191
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 227
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 228
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 230
    iput-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    .line 231
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 232
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 234
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 236
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 152
    const v0, 0x7f0f013a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v1, 0x7f0c028d

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v1, 0x7f0c028f

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v1, 0x7f0c028e

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 161
    const v0, 0x7f0f017f

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    .line 162
    const v0, 0x7f0f0181

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0f0180

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v0, 0x7f0f0182

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f0f013f

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 182
    const v0, 0x7f0f0136

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    .line 183
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 363
    return-void
.end method

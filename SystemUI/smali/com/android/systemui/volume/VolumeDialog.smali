.class public Lcom/android/systemui/volume/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialog$Callback;,
        Lcom/android/systemui/volume/VolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialog$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialog$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mClickSettings:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private final mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

.field private final mDialogContentView:Landroid/view/ViewGroup;

.field private final mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mExpandButton:Landroid/widget/ImageButton;

.field private final mExpandButtonAnimationDuration:I

.field private mExpandButtonRes:I

.field private mExpanded:Z

.field private mExpanding:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private final mSettingsButton:Landroid/view/View;

.field private mShowHeaders:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private final mZenFooter:Lcom/android/systemui/volume/ZenFooter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeDialog$Callback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/VolumeDialog$Callback;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$H;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    .line 104
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 109
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 110
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$1;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .line 117
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 119
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 773
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$6;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 827
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$7;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 837
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$8;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    .line 129
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 130
    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    .line 131
    new-instance v3, Lcom/android/systemui/volume/SpTexts;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 132
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 134
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    .line 136
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 137
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 138
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 140
    const v3, 0x10c0128

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 146
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 149
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 150
    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 151
    const-class v3, Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    const/16 v3, 0x31

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 153
    const v3, 0x7f0b003e

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 154
    const v3, 0x7f0d0127

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 155
    const/16 v3, 0x30

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    const v3, 0x7f08000c

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 159
    const v3, 0x7f08003d

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 160
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f040050

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setContentView(I)V

    .line 161
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f016a

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 162
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f016c

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 163
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x7f0f016b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 164
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 167
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 168
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 169
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 170
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 171
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 173
    const/4 v3, 0x2

    const v4, 0x7f02052c

    const v5, 0x7f02052d

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 175
    const/4 v3, 0x3

    const v4, 0x7f020528

    const v5, 0x7f020529

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 177
    const/4 v3, 0x4

    const v4, 0x7f02051f

    const v5, 0x7f020520

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 179
    const/4 v3, 0x0

    const v4, 0x7f020532

    const v5, 0x7f020532

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 181
    const/4 v3, 0x6

    const v4, 0x7f020523

    const v5, 0x7f020523

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 183
    const/4 v3, 0x1

    const v4, 0x7f020530

    const v5, 0x7f020531

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 186
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f0171

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    .line 187
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v3, 0x7f0a003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    .line 189
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f0175

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/ZenFooter;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    .line 190
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v3, p4}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->init()V

    .line 194
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {p3, v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 195
    invoke-virtual {p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 196
    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addRow(IIIZ)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/VolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v2

    .line 241
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 243
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 245
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 248
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 250
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/volume/VolumeDialog$1;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 270
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 271
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v0, 0x1388

    .line 446
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    if-nez v1, :cond_0

    .line 448
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    .line 449
    :cond_2
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 289
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 291
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 4

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 280
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 284
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-object v1, v2

    goto :goto_0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 321
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 322
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 324
    .local v0, "level":I
    :goto_0
    return v0

    .line 322
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 4
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialog$1;)V

    .line 330
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 331
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 332
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static {v0, p3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 333
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v0, p4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 334
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040062

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 335
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f016e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 337
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 338
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 339
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 342
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/VolumeDialog$2;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f016f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 367
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 368
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialog$3;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 406
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    return-object v0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v7, 0x1

    .line 556
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 557
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 560
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 561
    .local v4, "stream":I
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 562
    .local v3, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v5, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v5, :cond_1

    .line 559
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 564
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v5

    if-nez v5, :cond_0

    .line 565
    const v5, 0x7f02052a

    const v6, 0x7f02052b

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    goto :goto_1

    .line 569
    .end local v3    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v4    # "stream":I
    :cond_2
    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    iget v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v5, v6, :cond_3

    .line 570
    iget v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH()V

    .line 572
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 574
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 575
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_2

    .line 577
    .end local v2    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 578
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 729
    if-nez p1, :cond_1

    .line 730
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 732
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 733
    .local v1, "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 736
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 739
    :cond_3
    return-void
.end method

.method private repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 295
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 296
    .local v0, "loc":[I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 297
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 298
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v4, v5

    .line 299
    .local v2, "x":I
    const/4 v4, 0x1

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v3, v4, v5

    .line 300
    .local v3, "y":I
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repositionExpandAnim x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 302
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 303
    return-void
.end method

.method private setExpandedH(Z)V
    .locals 6
    .param p1, "expanded"    # Z

    .prologue
    .line 470
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-ne v2, p1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 471
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    .line 473
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExpandedH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH()V

    .line 475
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    if-eqz v2, :cond_2

    .line 476
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 477
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_2

    .line 479
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 481
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 483
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$4;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    .end local v0    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 742
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 743
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 744
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v1, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 748
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private showH(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 423
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 426
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 427
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 428
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->show()V

    .line 429
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 751
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 755
    monitor-exit v1

    .line 771
    :goto_0
    return-void

    .line 757
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$5;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$5;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 766
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 767
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 770
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 544
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 545
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 546
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    .line 544
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 549
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 550
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 553
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_2
    return-void
.end method

.method private updateExpandButtonH()V
    .locals 4

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 498
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    :cond_0
    :goto_1
    return-void

    .line 497
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 499
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_3

    const v0, 0x7f020525

    .line 501
    .local v0, "res":I
    :goto_2
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonRes:I

    if-eq v0, v1, :cond_0

    .line 502
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonRes:I

    .line 503
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 504
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0c015e

    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 499
    .end local v0    # "res":I
    :cond_3
    const v0, 0x7f020527

    goto :goto_2

    .line 504
    .restart local v0    # "res":I
    :cond_4
    const v1, 0x7f0c015d

    goto :goto_3
.end method

.method private updateFooterH()V
    .locals 2

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 582
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 583
    return-void

    .line 581
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRowsH()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 516
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 517
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 518
    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v8, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 522
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 523
    .local v4, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    if-ne v4, v0, :cond_2

    move v3, v6

    .line 524
    .local v3, "isActive":Z
    :goto_1
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/VolumeDialog;->isVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 525
    .local v5, "visible":Z
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 526
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_3

    move v8, v6

    :goto_2
    invoke-static {v9, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 527
    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_4

    const v1, 0x7f02052f

    .line 528
    .local v1, "expandButtonRes":I
    :goto_3
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v8

    if-eq v1, v8, :cond_1

    .line 529
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v4, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 530
    if-nez v1, :cond_5

    .line 531
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    :cond_1
    :goto_4
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/systemui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    .line 537
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v9

    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 538
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v9

    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 539
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v9

    if-eqz v3, :cond_8

    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    :goto_7
    invoke-virtual {v9, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v5    # "visible":Z
    :cond_2
    move v3, v7

    .line 523
    goto :goto_1

    .restart local v3    # "isActive":Z
    .restart local v5    # "visible":Z
    :cond_3
    move v8, v7

    .line 526
    goto :goto_2

    :cond_4
    move v1, v7

    .line 527
    goto :goto_3

    .line 533
    .restart local v1    # "expandButtonRes":I
    :cond_5
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 537
    :cond_6
    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_5

    .line 538
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    goto :goto_6

    .line 539
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    goto :goto_7

    .line 541
    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v4    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .end local v5    # "visible":Z
    :cond_9
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 25
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 588
    .local v17, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-eqz v17, :cond_0

    .line 589
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 590
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 591
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 593
    :cond_2
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 594
    .local v9, "isRingStream":Z
    :goto_1
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/4 v12, 0x1

    .line 595
    .local v12, "isSystemStream":Z
    :goto_2
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/4 v5, 0x1

    .line 596
    .local v5, "isAlarmStream":Z
    :goto_3
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v6, 0x1

    .line 597
    .local v6, "isMusicStream":Z
    :goto_4
    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/4 v10, 0x1

    .line 599
    .local v10, "isRingVibrate":Z
    :goto_5
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v20, v0

    if-nez v20, :cond_f

    const/4 v8, 0x1

    .line 601
    .local v8, "isRingSilent":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    .line 602
    .local v13, "isZenAlarms":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/4 v14, 0x1

    .line 603
    .local v14, "isZenNone":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    const/4 v15, 0x1

    .line 604
    .local v15, "isZenPriority":Z
    :goto_9
    if-nez v9, :cond_3

    if-eqz v12, :cond_13

    :cond_3
    if-eqz v14, :cond_13

    const/4 v11, 0x1

    .line 605
    .local v11, "isRingZenNone":Z
    :goto_a
    if-eqz v9, :cond_14

    if-eqz v15, :cond_14

    const/4 v7, 0x1

    .line 606
    .local v7, "isRingLimited":Z
    :goto_b
    if-eqz v13, :cond_16

    if-nez v9, :cond_4

    if-eqz v12, :cond_15

    :cond_4
    const/16 v19, 0x1

    .line 611
    .local v19, "zenMuted":Z
    :goto_c
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    move/from16 v20, v0

    mul-int/lit8 v16, v20, 0x64

    .line 612
    .local v16, "max":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getMax()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 613
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 617
    :cond_5
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 619
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 624
    :cond_6
    if-eqz v11, :cond_1a

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0283

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 637
    .local v18, "text":Ljava/lang/String;
    :goto_d
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 640
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    :cond_7
    if-nez v19, :cond_20

    const/4 v3, 0x1

    .line 641
    .local v3, "iconEnabled":Z
    :goto_e
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 642
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v21

    if-eqz v3, :cond_21

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_f
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 643
    if-eqz v10, :cond_22

    const v4, 0x7f02052e

    .line 651
    .local v4, "iconRes":I
    :goto_10
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    move/from16 v0, v20

    if-eq v4, v0, :cond_9

    .line 652
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    if-eqz v20, :cond_8

    if-eqz v10, :cond_8

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/volume/VolumeDialogController;->vibrate()V

    .line 655
    :cond_8
    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0, v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 656
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 658
    :cond_9
    const v20, 0x7f02052e

    move/from16 v0, v20

    if-ne v4, v0, :cond_29

    const/16 v20, 0x3

    :goto_11
    move-object/from16 v0, p1

    move/from16 v1, v20

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 665
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 668
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    goto/16 :goto_0

    .line 593
    .end local v3    # "iconEnabled":Z
    .end local v4    # "iconRes":I
    .end local v5    # "isAlarmStream":Z
    .end local v6    # "isMusicStream":Z
    .end local v7    # "isRingLimited":Z
    .end local v8    # "isRingSilent":Z
    .end local v9    # "isRingStream":Z
    .end local v10    # "isRingVibrate":Z
    .end local v11    # "isRingZenNone":Z
    .end local v12    # "isSystemStream":Z
    .end local v13    # "isZenAlarms":Z
    .end local v14    # "isZenNone":Z
    .end local v15    # "isZenPriority":Z
    .end local v16    # "max":I
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "zenMuted":Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 594
    .restart local v9    # "isRingStream":Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 595
    .restart local v12    # "isSystemStream":Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 596
    .restart local v5    # "isAlarmStream":Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 597
    .restart local v6    # "isMusicStream":Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 599
    .restart local v10    # "isRingVibrate":Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 601
    .restart local v8    # "isRingSilent":Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 602
    .restart local v13    # "isZenAlarms":Z
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 603
    .restart local v14    # "isZenNone":Z
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 604
    .restart local v15    # "isZenPriority":Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 605
    .restart local v11    # "isRingZenNone":Z
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 606
    .restart local v7    # "isRingLimited":Z
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_16
    if-eqz v14, :cond_19

    if-nez v9, :cond_17

    if-nez v12, :cond_17

    if-nez v5, :cond_17

    if-eqz v6, :cond_18

    :cond_17
    const/16 v19, 0x1

    goto/16 :goto_c

    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_c

    .line 626
    .restart local v16    # "max":I
    .restart local v19    # "zenMuted":Z
    :cond_1a
    if-eqz v10, :cond_1b

    if-eqz v7, :cond_1b

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0285

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 628
    .end local v18    # "text":Ljava/lang/String;
    :cond_1b
    if-eqz v10, :cond_1c

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0281

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 630
    .end local v18    # "text":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v20, v0

    if-nez v20, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v20, v0

    if-nez v20, :cond_1e

    .line 631
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0280

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 632
    .end local v18    # "text":Ljava/lang/String;
    :cond_1e
    if-eqz v7, :cond_1f

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0284

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 635
    .end local v18    # "text":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 640
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 642
    .restart local v3    # "iconEnabled":Z
    :cond_21
    const/high16 v20, 0x3f000000    # 0.5f

    goto/16 :goto_f

    .line 643
    :cond_22
    if-nez v8, :cond_23

    if-eqz v19, :cond_24

    :cond_23
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    goto/16 :goto_10

    :cond_24
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v20, v0

    if-eqz v20, :cond_26

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_25

    const v4, 0x7f020522

    goto/16 :goto_10

    :cond_25
    const v4, 0x7f020521

    goto/16 :goto_10

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v20, v0

    if-eqz v20, :cond_27

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v20, v0

    if-nez v20, :cond_27

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    goto/16 :goto_10

    :cond_27
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    goto/16 :goto_10

    :cond_28
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    goto/16 :goto_10

    .line 658
    .restart local v4    # "iconRes":I
    :cond_29
    const v20, 0x7f020522

    move/from16 v0, v20

    if-eq v4, v0, :cond_2a

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    move/from16 v0, v20

    if-ne v4, v0, :cond_2b

    :cond_2a
    const/16 v20, 0x2

    goto/16 :goto_11

    :cond_2b
    const v20, 0x7f020521

    move/from16 v0, v20

    if-eq v4, v0, :cond_2c

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    move/from16 v0, v20

    if-ne v4, v0, :cond_2d

    :cond_2c
    const/16 v20, 0x1

    goto/16 :goto_11

    :cond_2d
    const/16 v20, 0x0

    goto/16 :goto_11
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "zenMuted"    # Z

    .prologue
    .line 672
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    if-nez p2, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 673
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 726
    :cond_0
    :goto_1
    return-void

    .line 672
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 676
    :cond_2
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 677
    .local v3, "progress":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 678
    .local v1, "level":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    .line 679
    .local v4, "rowVisible":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    const/4 v0, 0x1

    .line 681
    .local v0, "inGracePeriod":Z
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 682
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 683
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 678
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 679
    .restart local v4    # "rowVisible":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 688
    .restart local v0    # "inGracePeriod":Z
    :cond_6
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v6, :cond_9

    const/4 v5, 0x0

    .line 689
    .local v5, "vlevel":I
    :goto_4
    if-ne v5, v1, :cond_7

    .line 690
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_7

    if-nez v4, :cond_0

    .line 694
    :cond_7
    mul-int/lit8 v2, v5, 0x64

    .line 695
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_0

    .line 696
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_b

    if-eqz v4, :cond_b

    .line 698
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_8

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 703
    :cond_8
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_a

    .line 704
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const-string v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    const/4 v9, 0x1

    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1, v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 705
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 710
    :goto_5
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 711
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 720
    :goto_6
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_0

    .line 721
    if-nez v5, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-nez v6, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 722
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamMute(IZ)V

    goto/16 :goto_1

    .line 688
    .end local v2    # "newProgress":I
    .end local v5    # "vlevel":I
    :cond_9
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget v5, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    goto/16 :goto_4

    .line 707
    .restart local v2    # "newProgress":I
    .restart local v5    # "vlevel":I
    :cond_a
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 708
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_5

    .line 715
    :cond_b
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 716
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 718
    :cond_c
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_6
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    .line 203
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 204
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 205
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWindowWidth dm.w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 207
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 209
    .local v2, "max":I
    if-le v3, v2, :cond_1

    .line 210
    move v3, v2

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 213
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void
.end method


# virtual methods
.method protected dismissH(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 456
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 457
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->dismiss()V

    .line 458
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 459
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 461
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    .line 463
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 466
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    const-string v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 308
    const-string v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 309
    const-string v0, "  mExpanding: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 310
    const-string v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 311
    const-string v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 312
    const-string v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 313
    const-string v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 314
    const-string v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    const-string v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->access$800(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 317
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 434
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 435
    const/4 v0, -0x1

    .line 436
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->access$800(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 443
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 230
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 236
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setStreamImportant(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v2, 0x5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

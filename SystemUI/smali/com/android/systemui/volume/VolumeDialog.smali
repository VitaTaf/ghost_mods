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

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mClickSettings:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private final mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

.field private final mDialogContentView:Landroid/view/ViewGroup;

.field private final mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mExpandButton:Landroid/widget/ImageButton;

.field private final mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpandButtonRes:I

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mLastActiveStream:I

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

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
    .line 88
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeDialog$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/VolumeDialog$Callback;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$H;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    .line 105
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 843
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$8;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 897
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$9;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 907
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$10;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    .line 135
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 137
    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    .line 138
    new-instance v0, Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 139
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 140
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 145
    .local v8, "window":Landroid/view/Window;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 146
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 148
    const v0, 0x10c0128

    invoke-virtual {v8, v0}, Landroid/view/Window;->addFlags(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 156
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 157
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 158
    const/4 v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 159
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 161
    const v0, 0x7f0d0127

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 162
    const/16 v0, 0x30

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 163
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 164
    invoke-virtual {v8, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 166
    const/16 v0, 0x30

    invoke-virtual {v8, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 167
    const v0, 0x7f08000c

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 167
    const v0, 0x7f08003d

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f040050

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setContentView(I)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 175
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 178
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialog$1;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 194
    const/4 v0, 0x2

    const v1, 0x7f02052c

    const v2, 0x7f02052d

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 196
    const/4 v0, 0x3

    const v1, 0x7f020528

    const v2, 0x7f020529

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 198
    const/4 v0, 0x4

    const v1, 0x7f02051f

    const v2, 0x7f020520

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 200
    const/4 v0, 0x0

    const v1, 0x7f020532

    const v2, 0x7f020532

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 202
    const/4 v0, 0x6

    const v1, 0x7f020523

    const v2, 0x7f020523

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 204
    const/4 v0, 0x1

    const v1, 0x7f020530

    const v2, 0x7f020531

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f0171

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f0a003e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    .line 210
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f0175

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenFooter;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    .line 211
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v0, p4}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->init()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 216
    invoke-virtual {p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 217
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mLastActiveStream:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/volume/VolumeDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mLastActiveStream:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/volume/VolumeDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addRow(IIIZ)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/VolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v2

    .line 262
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 264
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 265
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 267
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 270
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 272
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$2;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/volume/VolumeDialog$2;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 297
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 298
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v0, 0x1388

    .line 464
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->access$1300(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x4e20

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-nez v1, :cond_0

    .line 466
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_0

    .line 467
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    .line 468
    :cond_2
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 315
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

    .line 316
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 318
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
    .line 306
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

    .line 307
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 311
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

.method private getConservativeCollapseDuration()J
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 351
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 352
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 354
    .local v0, "level":I
    :goto_0
    return v0

    .line 352
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

    .line 359
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialog$1;)V

    .line 360
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 361
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 362
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static {v0, p3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 363
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v0, p4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 364
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040062

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 365
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 366
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f016e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 367
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 368
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 369
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 372
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/VolumeDialog$3;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 396
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f016f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 397
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 398
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialog$4;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 426
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    return-object v0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 302
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
    .line 563
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

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
    .line 220
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v9, 0x1

    .line 612
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 613
    .local v0, "animating":Z
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChangedH animating="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 615
    if-eqz v0, :cond_1

    .line 616
    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    .line 640
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 622
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 623
    .local v5, "stream":I
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 624
    .local v4, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v6, :cond_3

    .line 621
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 625
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 626
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_2

    .line 627
    const v6, 0x7f02052a

    const v7, 0x7f02052b

    invoke-direct {p0, v5, v6, v7, v9}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    goto :goto_2

    .line 631
    .end local v4    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v5    # "stream":I
    :cond_4
    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v6, v7, :cond_5

    .line 632
    iget v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    .line 633
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH()V

    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 636
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 637
    .local v3, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_3

    .line 639
    .end local v3    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    goto :goto_0
.end method

.method private prepareForCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 513
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateDialogBottomMarginH()V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 799
    if-nez p1, :cond_1

    .line 800
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 802
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

    .line 803
    .local v1, "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 806
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
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 809
    :cond_3
    return-void
.end method

.method private repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 322
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 323
    .local v0, "loc":[I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 324
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 325
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v4, v5

    .line 326
    .local v2, "x":I
    const/4 v4, 0x1

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v3, v4, v5

    .line 327
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

    .line 328
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 329
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 330
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method private setExpandedH(Z)V
    .locals 6
    .param p1, "expanded"    # Z

    .prologue
    .line 520
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-ne v2, p1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 521
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 523
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

    .line 524
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v2, :cond_2

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->prepareForCollapse()V

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH()V

    .line 528
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v2, :cond_3

    .line 529
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 530
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_3

    .line 532
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 534
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 536
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$6;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 546
    .end local v0    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 812
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

    .line 813
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 814
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v1, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 818
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private showH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 443
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_1

    .line 452
    :goto_0
    return-void

    .line 448
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 449
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    .line 450
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 821
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 825
    monitor-exit v1

    .line 841
    :goto_0
    return-void

    .line 827
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$7;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$7;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 836
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 837
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0

    .line 837
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
    .line 599
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 601
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 602
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    .line 600
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 603
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 605
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 606
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 609
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_3
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 497
    .local v2, "diff":J
    iget-wide v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    const/4 v1, 0x1

    .line 498
    .local v1, "collapsing":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 499
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 501
    .local v0, "bottomMargin":I
    :goto_1
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v5, :cond_1

    .line 502
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bottomMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 504
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    :cond_1
    return-void

    .line 497
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 499
    .restart local v1    # "collapsing":Z
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 4

    .prologue
    .line 550
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "updateExpandButtonH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 552
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    :cond_1
    :goto_1
    return-void

    .line 551
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 553
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_4

    const v0, 0x7f020525

    .line 555
    .local v0, "res":I
    :goto_2
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonRes:I

    if-eq v0, v1, :cond_1

    .line 556
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonRes:I

    .line 557
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 558
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0c015e

    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 553
    .end local v0    # "res":I
    :cond_4
    const v0, 0x7f020527

    goto :goto_2

    .line 558
    .restart local v0    # "res":I
    :cond_5
    const v1, 0x7f0c015d

    goto :goto_3
.end method

.method private updateFooterH()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 643
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v5, "updateFooterH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 645
    .local v1, "wasVisible":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 647
    .local v0, "visible":Z
    :goto_1
    if-eq v1, v0, :cond_1

    if-nez v0, :cond_1

    .line 648
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->prepareForCollapse()V

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 651
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 652
    return-void

    .end local v0    # "visible":Z
    .end local v1    # "wasVisible":Z
    :cond_2
    move v1, v3

    .line 644
    goto :goto_0

    .restart local v1    # "wasVisible":Z
    :cond_3
    move v0, v3

    .line 645
    goto :goto_1
.end method

.method private updateRowsH()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 569
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "updateRowsH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 571
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 572
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 573
    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v8, :cond_1

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 577
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 578
    .local v4, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    if-ne v4, v0, :cond_3

    move v3, v6

    .line 579
    .local v3, "isActive":Z
    :goto_1
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/VolumeDialog;->isVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 580
    .local v5, "visible":Z
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 581
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_4

    move v8, v6

    :goto_2
    invoke-static {v9, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 582
    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_5

    const v1, 0x7f02052f

    .line 583
    .local v1, "expandButtonRes":I
    :goto_3
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v8

    if-eq v1, v8, :cond_2

    .line 584
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v4, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 585
    if-nez v1, :cond_6

    .line 586
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    :cond_2
    :goto_4
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/systemui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    .line 592
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v9

    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 593
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    goto :goto_0

    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v5    # "visible":Z
    :cond_3
    move v3, v7

    .line 578
    goto :goto_1

    .restart local v3    # "isActive":Z
    .restart local v5    # "visible":Z
    :cond_4
    move v8, v7

    .line 581
    goto :goto_2

    :cond_5
    move v1, v7

    .line 582
    goto :goto_3

    .line 588
    .restart local v1    # "expandButtonRes":I
    :cond_6
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 592
    :cond_7
    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_5

    .line 596
    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v4    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .end local v5    # "visible":Z
    :cond_8
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 27
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 655
    sget-boolean v22, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v22, :cond_0

    sget-object v22, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateVolumeRowH s="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 745
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 658
    .local v18, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-eqz v18, :cond_1

    .line 659
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 660
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 661
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 663
    :cond_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 664
    const/16 v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 666
    :cond_4
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 667
    .local v10, "isRingStream":Z
    :goto_1
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const/4 v13, 0x1

    .line 668
    .local v13, "isSystemStream":Z
    :goto_2
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/4 v6, 0x1

    .line 669
    .local v6, "isAlarmStream":Z
    :goto_3
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    .line 670
    .local v7, "isMusicStream":Z
    :goto_4
    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const/4 v11, 0x1

    .line 672
    .local v11, "isRingVibrate":Z
    :goto_5
    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v22, v0

    if-nez v22, :cond_12

    const/4 v9, 0x1

    .line 674
    .local v9, "isRingSilent":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    .line 675
    .local v14, "isZenAlarms":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    const/4 v15, 0x1

    .line 676
    .local v15, "isZenNone":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    const/16 v16, 0x1

    .line 677
    .local v16, "isZenPriority":Z
    :goto_9
    if-nez v10, :cond_5

    if-eqz v13, :cond_16

    :cond_5
    if-eqz v15, :cond_16

    const/4 v12, 0x1

    .line 678
    .local v12, "isRingZenNone":Z
    :goto_a
    if-eqz v10, :cond_17

    if-eqz v16, :cond_17

    const/4 v8, 0x1

    .line 679
    .local v8, "isRingLimited":Z
    :goto_b
    if-eqz v14, :cond_19

    if-nez v10, :cond_6

    if-eqz v13, :cond_18

    :cond_6
    const/16 v21, 0x1

    .line 684
    .local v21, "zenMuted":Z
    :goto_c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    move/from16 v22, v0

    mul-int/lit8 v17, v22, 0x64

    .line 685
    .local v17, "max":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/SeekBar;->getMax()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 686
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 690
    :cond_7
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 691
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3302(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 692
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 697
    :cond_8
    if-eqz v12, :cond_1d

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c0283

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 710
    .local v19, "text":Ljava/lang/String;
    :goto_d
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 713
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v22, v0

    if-eqz v22, :cond_23

    :cond_9
    if-nez v21, :cond_23

    const/4 v4, 0x1

    .line 714
    .local v4, "iconEnabled":Z
    :goto_e
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 715
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v23

    if-eqz v4, :cond_24

    const/high16 v22, 0x3f800000    # 1.0f

    :goto_f
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 716
    if-eqz v11, :cond_25

    const v5, 0x7f02052e

    .line 724
    .local v5, "iconRes":I
    :goto_10
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_b

    .line 725
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    if-eqz v22, :cond_a

    if-eqz v11, :cond_a

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/volume/VolumeDialogController;->vibrate()V

    .line 728
    :cond_a
    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 729
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 731
    :cond_b
    const v22, 0x7f02052e

    move/from16 v0, v22

    if-ne v5, v0, :cond_2c

    const/16 v22, 0x3

    :goto_11
    move-object/from16 v0, p1

    move/from16 v1, v22

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 738
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 741
    if-nez v21, :cond_31

    const/4 v3, 0x1

    .line 742
    .local v3, "enableSlider":Z
    :goto_12
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_32

    if-nez v11, :cond_c

    if-nez v10, :cond_32

    if-nez v21, :cond_32

    :cond_c
    const/16 v20, 0x0

    .line 744
    .local v20, "vlevel":I
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;ZI)V

    goto/16 :goto_0

    .line 666
    .end local v3    # "enableSlider":Z
    .end local v4    # "iconEnabled":Z
    .end local v5    # "iconRes":I
    .end local v6    # "isAlarmStream":Z
    .end local v7    # "isMusicStream":Z
    .end local v8    # "isRingLimited":Z
    .end local v9    # "isRingSilent":Z
    .end local v10    # "isRingStream":Z
    .end local v11    # "isRingVibrate":Z
    .end local v12    # "isRingZenNone":Z
    .end local v13    # "isSystemStream":Z
    .end local v14    # "isZenAlarms":Z
    .end local v15    # "isZenNone":Z
    .end local v16    # "isZenPriority":Z
    .end local v17    # "max":I
    .end local v19    # "text":Ljava/lang/String;
    .end local v20    # "vlevel":I
    .end local v21    # "zenMuted":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 667
    .restart local v10    # "isRingStream":Z
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 668
    .restart local v13    # "isSystemStream":Z
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 669
    .restart local v6    # "isAlarmStream":Z
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 670
    .restart local v7    # "isMusicStream":Z
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 672
    .restart local v11    # "isRingVibrate":Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 674
    .restart local v9    # "isRingSilent":Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 675
    .restart local v14    # "isZenAlarms":Z
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 676
    .restart local v15    # "isZenNone":Z
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 677
    .restart local v16    # "isZenPriority":Z
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 678
    .restart local v12    # "isRingZenNone":Z
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 679
    .restart local v8    # "isRingLimited":Z
    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_c

    :cond_19
    if-eqz v15, :cond_1c

    if-nez v10, :cond_1a

    if-nez v13, :cond_1a

    if-nez v6, :cond_1a

    if-eqz v7, :cond_1b

    :cond_1a
    const/16 v21, 0x1

    goto/16 :goto_c

    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_c

    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 699
    .restart local v17    # "max":I
    .restart local v21    # "zenMuted":Z
    :cond_1d
    if-eqz v11, :cond_1e

    if-eqz v8, :cond_1e

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c0285

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 701
    .end local v19    # "text":Ljava/lang/String;
    :cond_1e
    if-eqz v11, :cond_1f

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c0281

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 703
    .end local v19    # "text":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-nez v22, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v22, v0

    if-eqz v22, :cond_21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    if-nez v22, :cond_21

    .line 704
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c0280

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 705
    .end local v19    # "text":Ljava/lang/String;
    :cond_21
    if-eqz v8, :cond_22

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c0284

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 708
    .end local v19    # "text":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .restart local v19    # "text":Ljava/lang/String;
    goto/16 :goto_d

    .line 713
    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 715
    .restart local v4    # "iconEnabled":Z
    :cond_24
    const/high16 v22, 0x3f000000    # 0.5f

    goto/16 :goto_f

    .line 716
    :cond_25
    if-nez v9, :cond_26

    if-eqz v21, :cond_27

    :cond_26
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    :cond_27
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v22, v0

    if-eqz v22, :cond_29

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_28

    const v5, 0x7f020522

    goto/16 :goto_10

    :cond_28
    const v5, 0x7f020521

    goto/16 :goto_10

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2a

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    if-nez v22, :cond_2a

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    :cond_2a
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2b

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    :cond_2b
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    .line 731
    .restart local v5    # "iconRes":I
    :cond_2c
    const v22, 0x7f020522

    move/from16 v0, v22

    if-eq v5, v0, :cond_2d

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    move/from16 v0, v22

    if-ne v5, v0, :cond_2e

    :cond_2d
    const/16 v22, 0x2

    goto/16 :goto_11

    :cond_2e
    const v22, 0x7f020521

    move/from16 v0, v22

    if-eq v5, v0, :cond_2f

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    move/from16 v0, v22

    if-ne v5, v0, :cond_30

    :cond_2f
    const/16 v22, 0x1

    goto/16 :goto_11

    :cond_30
    const/16 v22, 0x0

    goto/16 :goto_11

    .line 741
    :cond_31
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 742
    .restart local v3    # "enableSlider":Z
    :cond_32
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v20, v0

    goto/16 :goto_13
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 748
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 749
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    .line 758
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 796
    :cond_0
    :goto_1
    return-void

    .line 752
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 761
    :cond_2
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 753
    .local v3, "progress":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 754
    .local v1, "level":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x1

    .line 755
    .local v4, "rowVisible":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    const/4 v0, 0x1

    .line 757
    .local v0, "inGracePeriod":Z
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 758
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 759
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 754
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 755
    .restart local v4    # "rowVisible":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 773
    .restart local v0    # "inGracePeriod":Z
    :cond_6
    if-ne p3, v1, :cond_7

    .line 774
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_7

    if-nez v4, :cond_0

    .line 778
    :cond_7
    mul-int/lit8 v2, p3, 0x64

    .line 770
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_0

    .line 780
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    .line 782
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_8

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_8

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 787
    :cond_8
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-nez v5, :cond_9

    .line 779
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const-string v6, "progress"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 780
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 794
    :goto_4
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 786
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 787
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 791
    :cond_9
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 783
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_4

    .line 799
    :cond_a
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 791
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 802
    :cond_b
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1
.end method

.method private updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 747
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 749
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 751
    :cond_0
    if-eqz p2, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 749
    .local v0, "tint":Landroid/content/res/ColorStateList;
    :goto_0
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 757
    :goto_1
    return-void

    .line 747
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 759
    .restart local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_2
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 751
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 752
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    .line 224
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 225
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 226
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

    .line 227
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 228
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 230
    .local v2, "max":I
    if-le v3, v2, :cond_1

    .line 231
    move v3, v2

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 234
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method


# virtual methods
.method protected dismissH(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 477
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_0

    .line 478
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$5;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    .line 485
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 487
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_3

    .line 489
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 492
    :cond_3
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
    .line 334
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

    .line 335
    const-string v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 336
    const-string v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 337
    const-string v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 339
    const-string v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 340
    const-string v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 341
    const-string v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 342
    const-string v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 343
    const-string v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 344
    const-string v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 345
    const-string v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->access$1300(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 347
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 455
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 457
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

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

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 461
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 251
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 245
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 257
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
    .line 239
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v2, 0x5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

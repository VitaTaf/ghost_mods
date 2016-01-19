.class public Lcom/android/systemui/volume/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialog$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveStream:I

.field private mAutomute:Z

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mClickSettings:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private final mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

.field private final mDialogContentView:Landroid/view/ViewGroup;

.field private final mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandAnimRes:I

.field private final mExpandButton:Landroid/widget/ImageButton;

.field private final mExpandButtonAnimationDuration:I

.field private mExpanded:Z

.field private mExpanding:Z

.field private final mFooter:Landroid/view/View;

.field private final mFootlineAction:Landroid/widget/Button;

.field private final mFootlineText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

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

.field private final mSettingsButton:Landroid/view/View;

.field private mShowFooter:Z

.field private mShowHeaders:Z

.field private mShowZenFooter:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private final mTextFooter:Landroid/view/View;

.field private final mTurnOffDnd:Landroid/view/View$OnClickListener;

.field private final mZenFooter:Lcom/android/systemui/volume/ZenFooter;

.field private final mZenFooterCallback:Lcom/android/systemui/volume/ZenFooter$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p3, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$H;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    .line 100
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 110
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 111
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFooter:Z

    .line 112
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowZenFooter:Z

    .line 113
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 803
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$5;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 849
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$6;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 859
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$7;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    .line 872
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$8;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mTurnOffDnd:Landroid/view/View$OnClickListener;

    .line 884
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$9;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooterCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 123
    new-instance v3, Lcom/android/systemui/volume/SpTexts;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 124
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 126
    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    .line 128
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 129
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 130
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 132
    const v3, 0x10c0128

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 138
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 141
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7da

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 142
    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 143
    const-class v3, Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    const/16 v3, 0x31

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 145
    const v3, 0x7f0b003e

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 146
    const v3, 0x7f0d0127

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 147
    const/16 v3, 0x30

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 148
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f040050

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setContentView(I)V

    .line 151
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f016a

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 152
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f016c

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 153
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x7f0f016b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 154
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 157
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 158
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 159
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 161
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 163
    const/4 v3, 0x2

    const v4, 0x7f02052c

    const v5, 0x7f02052d

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 165
    const/4 v3, 0x3

    const v4, 0x7f020528

    const v5, 0x7f020529

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 167
    const/4 v3, 0x4

    const v4, 0x7f02051f

    const v5, 0x7f020520

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 169
    const/4 v3, 0x0

    const v4, 0x7f020532

    const v5, 0x7f020532

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 171
    const/4 v3, 0x6

    const v4, 0x7f020523

    const v5, 0x7f020523

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 173
    const/4 v3, 0x1

    const v4, 0x7f020530

    const v5, 0x7f020531

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 176
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f0172

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mTextFooter:Landroid/view/View;

    .line 177
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f0173

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineText:Landroid/widget/TextView;

    .line 178
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 179
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f0174

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineAction:Landroid/widget/Button;

    .line 180
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineAction:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 181
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f016d

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mFooter:Landroid/view/View;

    .line 182
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f0171

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    .line 183
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v3, 0x7f0a003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    .line 185
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v4, 0x7f0f0175

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/ZenFooter;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    .line 186
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooterCallback:Lcom/android/systemui/volume/ZenFooter$Callback;

    invoke-virtual {v3, p3, v4}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/ZenFooter$Callback;)V

    .line 188
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {p2, v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 189
    invoke-virtual {p2}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 190
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method private addRow(IIIZ)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/VolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v2

    .line 243
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 245
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 247
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 250
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 252
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/volume/VolumeDialog$1;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 272
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 273
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->isFooterExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    .line 455
    :goto_0
    return v0

    .line 453
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x1388

    goto :goto_0

    .line 454
    :cond_2
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v0, 0x5dc

    goto :goto_0

    .line 455
    :cond_3
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 290
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

    .line 291
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 293
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
    .line 281
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

    .line 282
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 286
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
    .line 321
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 322
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 323
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 325
    .local v0, "level":I
    :goto_0
    return v0

    .line 323
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

    .line 330
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialog$1;)V

    .line 331
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 332
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 333
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static {v0, p3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 334
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v0, p4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 335
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040062

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$302(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 336
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f016e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 338
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 339
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 340
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 343
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/VolumeDialog$2;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 367
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f016f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 368
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 369
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialog$3;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 407
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    return-object v0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 277
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
    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

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

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v7, 0x1

    .line 562
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 563
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 566
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 567
    .local v4, "stream":I
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 568
    .local v3, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v5, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v5, :cond_1

    .line 565
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 570
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v5

    if-nez v5, :cond_0

    .line 571
    const v5, 0x7f02052a

    const v6, 0x7f02052b

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    goto :goto_1

    .line 575
    .end local v3    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v4    # "stream":I
    :cond_2
    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    iget v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v5, v6, :cond_3

    .line 576
    iget v5, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH()V

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 580
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

    .line 581
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_2

    .line 583
    .end local v2    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 584
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 782
    if-nez p1, :cond_1

    .line 783
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 785
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

    .line 786
    .local v1, "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 789
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
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 792
    :cond_3
    return-void
.end method

.method private repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 297
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 298
    .local v0, "loc":[I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 299
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 300
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v4, v5

    .line 301
    .local v2, "x":I
    const/4 v4, 0x1

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v3, v4, v5

    .line 302
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

    .line 303
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 304
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 305
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
    .line 795
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

    .line 796
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 797
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v1, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 801
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

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 436
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 437
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->show()V

    .line 438
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

    .line 439
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto :goto_0
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 552
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    .line 550
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 553
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 556
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 559
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_2
    return-void
.end method

.method private updateExpandButtonH()V
    .locals 3

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

    .line 504
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
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandAnimRes:I

    if-eq v0, v1, :cond_0

    .line 502
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandAnimRes:I

    .line 503
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 499
    .end local v0    # "res":I
    :cond_3
    const v0, 0x7f020527

    goto :goto_2
.end method

.method private updateFooterH()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 625
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFooter:Z

    if-nez v3, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mFooter:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 639
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowZenFooter:Z

    if-eqz v3, :cond_5

    .line 630
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mTextFooter:Landroid/view/View;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 631
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v0, v1

    .line 632
    .local v0, "ringActive":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->isZen()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-static {v3, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 634
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0

    .end local v0    # "ringActive":Z
    :cond_4
    move v0, v2

    .line 631
    goto :goto_1

    .line 636
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 637
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateTextFooterH()V

    goto :goto_0
.end method

.method private updateRowsH()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 513
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 514
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 516
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mFooter:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    move v2, v8

    .line 517
    .local v2, "footerVisible":Z
    :goto_0
    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v10, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 521
    :cond_0
    const/4 v5, 0x0

    .line 522
    .local v5, "lastVisible":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 523
    .local v6, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    if-ne v6, v0, :cond_3

    move v4, v8

    .line 524
    .local v4, "isActive":Z
    :goto_2
    invoke-direct {p0, v6, v4}, Lcom/android/systemui/volume/VolumeDialog;->isVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 525
    move-object v5, v6

    goto :goto_1

    .end local v2    # "footerVisible":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isActive":Z
    .end local v5    # "lastVisible":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .end local v6    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_2
    move v2, v9

    .line 516
    goto :goto_0

    .restart local v2    # "footerVisible":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "lastVisible":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .restart local v6    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_3
    move v4, v9

    .line 523
    goto :goto_2

    .line 529
    .end local v6    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 530
    .restart local v6    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    if-ne v6, v0, :cond_6

    move v4, v8

    .line 531
    .restart local v4    # "isActive":Z
    :goto_4
    invoke-direct {p0, v6, v4}, Lcom/android/systemui/volume/VolumeDialog;->isVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    move-result v7

    .line 532
    .local v7, "visible":Z
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 533
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v11

    if-eqz v7, :cond_7

    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_7

    move v10, v8

    :goto_5
    invoke-static {v11, v10}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 534
    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_8

    const v1, 0x7f02052f

    .line 535
    .local v1, "expandButtonRes":I
    :goto_6
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v10

    if-eq v1, v10, :cond_5

    .line 536
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v6, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 537
    if-nez v1, :cond_9

    .line 538
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    :cond_5
    :goto_7
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v11

    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_a

    if-nez v2, :cond_a

    if-ne v6, v5, :cond_a

    move v10, v8

    :goto_8
    invoke-static {v11, v10}, Lcom/android/systemui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    .line 545
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v11

    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_b

    if-eqz v4, :cond_b

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .end local v1    # "expandButtonRes":I
    .end local v4    # "isActive":Z
    .end local v7    # "visible":Z
    :cond_6
    move v4, v9

    .line 530
    goto :goto_4

    .restart local v4    # "isActive":Z
    .restart local v7    # "visible":Z
    :cond_7
    move v10, v9

    .line 533
    goto :goto_5

    :cond_8
    move v1, v9

    .line 534
    goto :goto_6

    .line 540
    .restart local v1    # "expandButtonRes":I
    :cond_9
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_7

    :cond_a
    move v10, v9

    .line 543
    goto :goto_8

    .line 545
    :cond_b
    const/high16 v10, 0x3f000000    # 0.5f

    goto :goto_9

    .line 547
    .end local v1    # "expandButtonRes":I
    .end local v4    # "isActive":Z
    .end local v6    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .end local v7    # "visible":Z
    :cond_c
    return-void
.end method

.method private updateTextFooterH()V
    .locals 14

    .prologue
    const v13, 0x7f0c0288

    const v12, 0x7f0c0287

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 587
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v9, v9, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz v9, :cond_5

    move v6, v7

    .line 588
    .local v6, "zen":Z
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mFooter:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_6

    move v5, v7

    .line 589
    .local v5, "wasVisible":Z
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialog;->mTextFooter:Landroid/view/View;

    iget-boolean v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFooter:Z

    if-eqz v9, :cond_7

    if-nez v6, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v9, :cond_7

    if-eqz v5, :cond_7

    :cond_0
    move v9, v7

    :goto_2
    invoke-static {v10, v9}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 590
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mTextFooter:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    .line 591
    const/4 v4, 0x0

    .line 592
    .local v4, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 593
    .local v0, "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v9, v9, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v9, :cond_1

    .line 594
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v9, v9, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    iget-object v9, v9, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 596
    .local v2, "countdown":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_8

    .line 597
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Util;->getShortTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v9, v12, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 599
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    .end local v2    # "countdown":J
    :cond_1
    :goto_3
    if-nez v4, :cond_2

    .line 611
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f0c027e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 613
    :cond_2
    if-nez v0, :cond_3

    .line 614
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f0c027f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineText:Landroid/widget/TextView;

    invoke-static {v7, v4}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 617
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineAction:Landroid/widget/Button;

    invoke-static {v7, v0}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 618
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineAction:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mTurnOffDnd:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineText:Landroid/widget/TextView;

    invoke-static {v7, v6}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 621
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mFootlineAction:Landroid/widget/Button;

    invoke-static {v7, v6}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 622
    return-void

    .end local v5    # "wasVisible":Z
    .end local v6    # "zen":Z
    :cond_5
    move v6, v8

    .line 587
    goto/16 :goto_0

    .restart local v6    # "zen":Z
    :cond_6
    move v5, v8

    .line 588
    goto :goto_1

    .restart local v5    # "wasVisible":Z
    :cond_7
    move v9, v8

    .line 589
    goto :goto_2

    .line 601
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "countdown":J
    .restart local v4    # "text":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v9, v9, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    iget-object v9, v9, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v1

    .line 603
    .local v1, "info":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    if-eqz v1, :cond_1

    .line 604
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/systemui/volume/Util;->getShortTime(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v9, v12, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 606
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 18
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    if-nez v13, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v13, v13, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 644
    .local v11, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-eqz v11, :cond_0

    .line 645
    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v0, v11}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 646
    iget v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-lez v13, :cond_2

    .line 647
    iget v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v0, v13}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 649
    :cond_2
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    const/4 v7, 0x1

    .line 650
    .local v7, "isRingStream":Z
    :goto_1
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    const/4 v9, 0x1

    .line 651
    .local v9, "isSystemStream":Z
    :goto_2
    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const/4 v8, 0x1

    .line 653
    .local v8, "isRingVibrate":Z
    :goto_3
    if-nez v7, :cond_3

    if-eqz v9, :cond_c

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    const/4 v5, 0x1

    .line 655
    .local v5, "isNoned":Z
    :goto_4
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    const/4 v4, 0x1

    .line 657
    .local v4, "isLimited":Z
    :goto_5
    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v13, v13, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    if-eqz v13, :cond_e

    const/4 v6, 0x1

    .line 660
    .local v6, "isRingAndSuppressed":Z
    :goto_6
    iget v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v10, v13, 0x64

    .line 661
    .local v10, "max":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    if-eq v10, v13, :cond_4

    .line 662
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 666
    :cond_4
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    if-eq v13, v14, :cond_5

    .line 667
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static {v0, v13}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 668
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    invoke-static {v13, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 673
    :cond_5
    if-eqz v6, :cond_f

    .line 674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0282

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 689
    .local v12, "text":Ljava/lang/String;
    :goto_7
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v13

    invoke-static {v13, v12}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 692
    if-nez v6, :cond_16

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-nez v13, :cond_6

    iget-boolean v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v13, :cond_16

    :cond_6
    const/4 v2, 0x1

    .line 693
    .local v2, "iconEnabled":Z
    :goto_8
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 694
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v14

    if-eqz v2, :cond_17

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v14, v13}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 695
    if-nez v6, :cond_18

    if-eqz v8, :cond_18

    const v3, 0x7f02052e

    .line 701
    .local v3, "iconRes":I
    :goto_a
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v13

    if-eq v3, v13, :cond_8

    .line 702
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v8, :cond_7

    .line 703
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogController;->vibrate()V

    .line 705
    :cond_7
    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 706
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 708
    :cond_8
    const v13, 0x7f02052e

    if-ne v3, v13, :cond_1e

    const/4 v13, 0x3

    :goto_b
    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I
    invoke-static {v0, v13}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    goto/16 :goto_0

    .line 649
    .end local v2    # "iconEnabled":Z
    .end local v3    # "iconRes":I
    .end local v4    # "isLimited":Z
    .end local v5    # "isNoned":Z
    .end local v6    # "isRingAndSuppressed":Z
    .end local v7    # "isRingStream":Z
    .end local v8    # "isRingVibrate":Z
    .end local v9    # "isSystemStream":Z
    .end local v10    # "max":I
    .end local v12    # "text":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 650
    .restart local v7    # "isRingStream":Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 651
    .restart local v9    # "isSystemStream":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 653
    .restart local v8    # "isRingVibrate":Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 655
    .restart local v5    # "isNoned":Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 657
    .restart local v4    # "isLimited":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 676
    .restart local v6    # "isRingAndSuppressed":Z
    .restart local v10    # "max":I
    :cond_f
    if-eqz v5, :cond_10

    .line 677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0283

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/String;
    goto/16 :goto_7

    .line 678
    .end local v12    # "text":Ljava/lang/String;
    :cond_10
    if-eqz v8, :cond_11

    if-eqz v4, :cond_11

    .line 679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0285

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/String;
    goto/16 :goto_7

    .line 680
    .end local v12    # "text":Ljava/lang/String;
    :cond_11
    if-eqz v8, :cond_12

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0281

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/String;
    goto/16 :goto_7

    .line 682
    .end local v12    # "text":Ljava/lang/String;
    :cond_12
    iget-boolean v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-nez v13, :cond_13

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-eqz v13, :cond_14

    iget v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v13, :cond_14

    .line 683
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0280

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/String;
    goto/16 :goto_7

    .line 684
    .end local v12    # "text":Ljava/lang/String;
    :cond_14
    if-eqz v4, :cond_15

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0284

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/String;
    goto/16 :goto_7

    .line 687
    .end local v12    # "text":Ljava/lang/String;
    :cond_15
    iget-object v12, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .restart local v12    # "text":Ljava/lang/String;
    goto/16 :goto_7

    .line 692
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 694
    .restart local v2    # "iconEnabled":Z
    :cond_17
    const/high16 v13, 0x3f000000    # 0.5f

    goto/16 :goto_9

    .line 695
    :cond_18
    iget-boolean v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v13, :cond_1a

    iget-boolean v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v13, :cond_19

    const v3, 0x7f020522

    goto/16 :goto_a

    :cond_19
    const v3, 0x7f020521

    goto/16 :goto_a

    :cond_1a
    if-nez v6, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-eqz v13, :cond_1c

    iget v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v13, :cond_1c

    :cond_1b
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    goto/16 :goto_a

    :cond_1c
    iget-boolean v13, v11, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v13, :cond_1d

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    goto/16 :goto_a

    :cond_1d
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    goto/16 :goto_a

    .line 708
    .restart local v3    # "iconRes":I
    :cond_1e
    const v13, 0x7f020522

    if-eq v3, v13, :cond_1f

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v13

    if-ne v3, v13, :cond_20

    :cond_1f
    const/4 v13, 0x2

    goto/16 :goto_b

    :cond_20
    const v13, 0x7f020521

    if-eq v3, v13, :cond_21

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v13

    if-ne v3, v13, :cond_22

    :cond_21
    const/4 v13, 0x1

    goto/16 :goto_b

    :cond_22
    const/4 v13, 0x0

    goto/16 :goto_b
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "isRingAndSuppressed"    # Z

    .prologue
    .line 721
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    if-nez p2, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 722
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 779
    :cond_0
    :goto_1
    return-void

    .line 721
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 725
    :cond_2
    if-eqz p2, :cond_3

    .line 726
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 729
    :cond_3
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 730
    .local v3, "progress":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 731
    .local v1, "level":I
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    .line 732
    .local v4, "rowVisible":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    const/4 v0, 0x1

    .line 734
    .local v0, "inGracePeriod":Z
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 735
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_7

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    .line 736
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 731
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 732
    .restart local v4    # "rowVisible":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 741
    .restart local v0    # "inGracePeriod":Z
    :cond_7
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v6, :cond_a

    const/4 v5, 0x0

    .line 742
    .local v5, "vlevel":I
    :goto_4
    if-ne v5, v1, :cond_8

    .line 743
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_8

    if-nez v4, :cond_0

    .line 747
    :cond_8
    mul-int/lit8 v2, v5, 0x64

    .line 748
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_0

    .line 749
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_c

    if-eqz v4, :cond_c

    .line 751
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_9

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_9

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 756
    :cond_9
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_b

    .line 757
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

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
    invoke-static {p1, v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 758
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 763
    :goto_5
    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 764
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 765
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 773
    :goto_6
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-eqz v6, :cond_0

    .line 774
    if-nez v5, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-nez v6, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 775
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamMute(IZ)V

    goto/16 :goto_1

    .line 741
    .end local v2    # "newProgress":I
    .end local v5    # "vlevel":I
    :cond_a
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget v5, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    goto/16 :goto_4

    .line 760
    .restart local v2    # "newProgress":I
    .restart local v5    # "vlevel":I
    :cond_b
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 761
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_5

    .line 768
    :cond_c
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 769
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 771
    :cond_d
    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_6
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    .line 193
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 194
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 195
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

    .line 196
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 197
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 199
    .local v2, "max":I
    if-le v3, v2, :cond_1

    .line 200
    move v3, v2

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 203
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method

.method protected dismissH(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 461
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 463
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->dismiss()V

    .line 464
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 465
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 308
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

    .line 309
    const-string v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 310
    const-string v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 311
    const-string v0, "  mExpanding: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 312
    const-string v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 313
    const-string v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    const-string v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    const-string v0, "  mShowFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFooter:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 316
    const-string v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 317
    const-string v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 318
    return-void
.end method

.method protected onSettingsClickedH()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method protected onZenSettingsClickedH()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 443
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 445
    .local v0, "timeout":I
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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 448
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 449
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 232
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setShowFooter(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFooter:Z

    if-ne v0, p1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFooter:Z

    .line 220
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 214
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 238
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
    .line 208
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v2, 0x5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setZenFooter(Z)V
    .locals 2
    .param p1, "zen"    # Z

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowZenFooter:Z

    if-ne v0, p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowZenFooter:Z

    .line 226
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

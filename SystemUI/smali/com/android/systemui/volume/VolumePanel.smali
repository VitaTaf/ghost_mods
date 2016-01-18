.class public Lcom/android/systemui/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanel$Callback;,
        Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;,
        Lcom/android/systemui/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui/volume/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static LOGD:Z

.field private static final STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mDemoIcon:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDisabledAlpha:F

.field private mHasVibrator:Z

.field private final mIconPulser:Lcom/android/systemui/volume/IconPulser;

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mNotificationEffectsSuppressor:Landroid/content/ComponentName;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private final mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

.field private mZenPanelExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 90
    const-string v0, "VolumePanel"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    .line 135
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 247
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    const/16 v8, 0xbb8

    iput v8, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 153
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 154
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 178
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1546
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$9;

    invoke-direct {v8, p0}, Lcom/android/systemui/volume/VolumePanel$9;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1567
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$10;

    invoke-direct {v8, p0}, Lcom/android/systemui/volume/VolumePanel$10;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 1580
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$11;

    invoke-direct {v8, p0}, Lcom/android/systemui/volume/VolumePanel$11;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 365
    const-string v8, "%s.%08x"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "VolumePanel"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    .line 366
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 367
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 368
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 369
    const-string v8, "accessibility"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 371
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    .line 372
    new-instance v8, Lcom/android/systemui/volume/IconPulser;

    invoke-direct {v8, p1}, Lcom/android/systemui/volume/IconPulser;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mIconPulser:Lcom/android/systemui/volume/IconPulser;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 376
    .local v4, "res":Landroid/content/res/Resources;
    const v8, 0x112000f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 377
    .local v6, "useMasterVolume":Z
    if-eqz v6, :cond_1

    .line 378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v8, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v8, v8

    if-ge v1, v8, :cond_1

    .line 379
    sget-object v8, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v8, v1

    .line 380
    .local v5, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 383
    .end local v1    # "i":I
    .end local v5    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    sget-boolean v8, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v9, "new VolumePanel"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_2
    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 386
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 387
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const v11, 0x1010033

    aput v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 389
    .local v0, "arr":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 390
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    .end local v0    # "arr":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$1;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/volume/VolumePanel$1;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 405
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 406
    .local v7, "window":Landroid/view/Window;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 407
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 408
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v9, 0x7f040050

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 409
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v9, Lcom/android/systemui/volume/VolumePanel$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/volume/VolumePanel$2;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 420
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->create()V

    .line 422
    invoke-virtual {p0, v7, v4}, Lcom/android/systemui/volume/VolumePanel;->getDialogLayoutParams(Landroid/view/Window;Landroid/content/res/Resources;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    .line 426
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 428
    const v8, 0x1040028

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 432
    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    .line 433
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    new-instance v9, Lcom/android/systemui/volume/VolumePanel$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/volume/VolumePanel$3;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-static {v8, v9}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 440
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v9, 0x7f0f0132

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 441
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v9, 0x7f0f0133

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 442
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v9, 0x7f0f0138

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/ZenModePanel;

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->initZenModePanel()V

    .line 445
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    new-array v8, v8, [Landroid/media/ToneGenerator;

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 446
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 447
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    .line 448
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112004e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    .line 450
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    .line 451
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isZenAvailable()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    .line 452
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 453
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v8, v9}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 456
    :cond_4
    const v8, 0x112000f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 457
    .local v3, "masterVolumeOnly":Z
    const v8, 0x1120010

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 458
    .local v2, "masterVolumeKeySounds":Z
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V

    .line 461
    return-void

    .line 447
    .end local v2    # "masterVolumeKeySounds":Z
    .end local v3    # "masterVolumeOnly":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 458
    .restart local v2    # "masterVolumeKeySounds":Z
    .restart local v3    # "masterVolumeOnly":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_3
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/volume/VolumePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->toggleRinger(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/volume/VolumePanel;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 88
    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumePanel;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    return-void
.end method

.method private announceDialogShown()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1224
    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1306
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1307
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1309
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1313
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 12

    .prologue
    .line 638
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 639
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 642
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v10, Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v11, v11

    invoke-direct {v10, v11}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    .line 644
    sget-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 645
    .local v3, "notificationStream":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v10, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v10, v10

    if-ge v0, v10, :cond_9

    .line 646
    sget-object v10, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v8, v10, v0

    .line 648
    .local v8, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v9, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 649
    .local v9, "streamType":I
    invoke-static {v9}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v2

    .line 651
    .local v2, "isNotification":Z
    new-instance v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    .line 652
    .local v6, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iput v9, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    .line 653
    const v10, 0x7f040052

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 655
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 656
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0134

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 657
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 658
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 659
    iget v10, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 660
    iget v10, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 661
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    iget-object v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 663
    if-eqz v2, :cond_1

    .line 664
    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v10, :cond_0

    .line 665
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 666
    const v10, 0x7f0200ae

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 667
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$6;

    invoke-direct {v11, p0, v6}, Lcom/android/systemui/volume/VolumePanel$6;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    :cond_0
    const v10, 0x7f0200ad

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconSuppressedRes:I

    .line 677
    :cond_1
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0136

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 678
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0135

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    .line 680
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    if-nez v2, :cond_5

    iget-boolean v10, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    if-eqz v10, :cond_5

    const/4 v7, 0x1

    .line 682
    .local v7, "showSecondary":Z
    :goto_2
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0069

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->divider:Landroid/view/View;

    .line 683
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0137

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    .line 685
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    const v11, 0x7f0200ac

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    iget v11, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 688
    iget-object v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->divider:Landroid/view/View;

    if-eqz v7, :cond_6

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    if-eqz v7, :cond_2

    .line 691
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$7;

    invoke-direct {v11, p0, v6}, Lcom/android/systemui/volume/VolumePanel$7;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    :cond_2
    const/4 v10, 0x6

    if-eq v9, v10, :cond_3

    if-nez v9, :cond_8

    :cond_3
    const/4 v4, 0x1

    .line 700
    .local v4, "plusOne":I
    :goto_5
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v9}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 701
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 702
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v10, v6}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 703
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 662
    .end local v4    # "plusOne":I
    .end local v7    # "showSecondary":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 681
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 688
    .restart local v7    # "showSecondary":Z
    :cond_6
    const/16 v10, 0x8

    goto :goto_3

    .line 689
    :cond_7
    const/16 v10, 0x8

    goto :goto_4

    .line 698
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 705
    .end local v2    # "isNotification":Z
    .end local v6    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v7    # "showSecondary":Z
    .end local v8    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .end local v9    # "streamType":I
    :cond_9
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 1012
    if-nez p0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private forceTimeout(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x5

    .line 1531
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1533
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1534
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    const/16 v4, 0x64

    .line 1361
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 1365
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v2, :cond_4

    .line 1366
    const/4 p1, 0x1

    .line 1371
    :cond_0
    monitor-enter p0

    .line 1372
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v2, p1

    if-nez v2, :cond_3

    .line 1374
    const/16 v1, 0x64

    .line 1375
    .local v1, "toneVolume":I
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1376
    const-string v2, "ro.audio.ringbeep_volume"

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1377
    if-lez v1, :cond_1

    if-le v1, v4, :cond_5

    .line 1378
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v3, "Ringbeep volume set to invalid value; using 100"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    const/16 v1, 0x64

    .line 1386
    :cond_2
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v3, Landroid/media/ToneGenerator;

    invoke-direct {v3, p1, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v3, v2, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1394
    .end local v1    # "toneVolume":I
    :cond_3
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v2, p1

    monitor-exit p0

    :goto_2
    return-object v2

    .line 1368
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1380
    .restart local v1    # "toneVolume":I
    :cond_5
    if-eq v1, v4, :cond_2

    .line 1381
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ringtone constructor overriding volume to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1395
    .end local v1    # "toneVolume":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1387
    .restart local v1    # "toneVolume":I
    :catch_0
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    .line 1389
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 588
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    .line 600
    :goto_0
    return v2

    .line 590
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 593
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 595
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    .line 598
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 605
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getLastAudibleMasterVolume()I

    move-result v2

    .line 617
    :goto_0
    return v2

    .line 607
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 609
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 610
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 612
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    .line 615
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 617
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 786
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 788
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 789
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 791
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 792
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 801
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "VolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initZenModePanel()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$4;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 542
    return-void
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 577
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 583
    :goto_0
    return v0

    .line 579
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 581
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 878
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private isZenPanelVisible()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 550
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 551
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$5;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 574
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .param p1, "activeStreamType"    # I

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 721
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 722
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 723
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 733
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 727
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 728
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 729
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 730
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 731
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x5

    .line 1519
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 1520
    .local v0, "touchExploration":Z
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1523
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1524
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1525
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1526
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    .line 1528
    :cond_2
    return-void
.end method

.method private setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 547
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    .line 1404
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1405
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1406
    iput p1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1407
    iput p2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1408
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1410
    :cond_0
    return-void
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 622
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2

    .line 623
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "Adjusting remote volume without a controller!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_2
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 629
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_3

    .line 630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    goto :goto_0

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setZenPanelVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 900
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZenPanelVisible "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mZenPanel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v3

    if-eq p1, v3, :cond_2

    move v0, v1

    .line 902
    .local v0, "changing":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 903
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    .line 904
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 908
    :goto_1
    if-eqz v0, :cond_1

    .line 909
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 910
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 912
    :cond_1
    return-void

    .end local v0    # "changing":Z
    :cond_2
    move v0, v2

    .line 901
    goto :goto_0

    .line 906
    .restart local v0    # "changing":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    goto :goto_1
.end method

.method private showSilentHint()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->showSilentHint()V

    .line 865
    :cond_0
    return-void
.end method

.method private showVibrateHint()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 868
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 869
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 870
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIconPulser:Lcom/android/systemui/volume/IconPulser;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/IconPulser;->start(Landroid/view/View;)V

    .line 871
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 875
    :cond_0
    return-void
.end method

.method private static streamToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 1014
    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toggleRinger(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v1, 0x2

    .line 708
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 711
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 714
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method

.method private updateActiveSlider()V
    .locals 3

    .prologue
    .line 923
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 924
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 925
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 927
    :cond_0
    return-void
.end method

.method private updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "forceReloadIcon"    # Z

    .prologue
    .line 806
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 807
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 808
    .local v0, "muted":Z
    if-eqz p2, :cond_0

    .line 809
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 812
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 813
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderSuppressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 814
    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V
    .locals 8
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z
    .param p3, "fixedVolume"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 817
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    .line 818
    .local v2, "wasEnabled":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v5}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 819
    .local v0, "isRinger":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_2

    .line 822
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 843
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 844
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 845
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 846
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 859
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v4

    .line 822
    goto :goto_0

    .line 823
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    .line 824
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 825
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 826
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    .line 827
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    if-nez v5, :cond_4

    .line 829
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 830
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 831
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 832
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    .line 833
    :cond_4
    if-nez p3, :cond_6

    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq v5, v6, :cond_5

    if-nez v0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v5, :cond_7

    .line 836
    :cond_6
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 838
    :cond_7
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 839
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 840
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_1

    .line 848
    :cond_8
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$8;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 856
    .local v1, "showHintOnTouch":Landroid/view/View$OnTouchListener;
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    const/4 v2, 0x1

    .line 750
    const/4 v1, 0x0

    .line 751
    .local v1, "suppressor":Landroid/content/ComponentName;
    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 753
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 754
    .local v0, "ringerMode":I
    if-nez v0, :cond_1

    .line 755
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 759
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v3, :cond_3

    .line 760
    if-ne v0, v2, :cond_2

    move p2, v2

    .line 765
    .end local v0    # "ringerMode":I
    :cond_0
    :goto_1
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    return-void

    .line 757
    .restart local v0    # "ringerMode":I
    :cond_1
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    goto :goto_0

    .line 760
    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    .line 762
    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    .line 765
    .end local v0    # "ringerMode":I
    :cond_4
    if-eqz v1, :cond_5

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconSuppressedRes:I

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    goto :goto_2

    :cond_6
    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "progress"    # I

    .prologue
    .line 736
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 737
    .local v0, "isRinger":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-nez v1, :cond_0

    .line 738
    iget p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 740
    :cond_0
    if-gez p2, :cond_1

    .line 741
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 743
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 744
    if-eqz v0, :cond_2

    .line 745
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 747
    :cond_2
    return-void
.end method

.method private updateSliderSuppressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 7
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 772
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 774
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    if-nez v0, :cond_1

    .line 775
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 776
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    :goto_1
    return-void

    .line 772
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 778
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 779
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const v3, 0x104069a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 915
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 916
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 917
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 918
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private updateTimeoutDelay()V
    .locals 3

    .prologue
    const/16 v0, 0x2710

    .line 887
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 893
    return-void

    .line 887
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    const/16 v0, 0x1388

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1194

    goto :goto_0

    :cond_4
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateWidth()V
    .locals 3

    .prologue
    .line 469
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 470
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 471
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 472
    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 474
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 475
    return-void
.end method

.method private updateZenPanelVisible()V
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    .line 931
    return-void

    .line 930
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1542
    const-string v5, "volume"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1543
    :cond_0
    const-string v5, "icon"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "icon":Ljava/lang/String;
    const-string v5, "iconmute"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1545
    .local v2, "iconMute":Ljava/lang/String;
    if-eqz v2, :cond_2

    move v3, v6

    .line 1546
    .local v3, "mute":Z
    :goto_1
    if-eqz v3, :cond_1

    move-object v1, v2

    .line 1547
    :cond_1
    const-string v5, "Stream"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1548
    :goto_2
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel$StreamResources;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/VolumePanel$StreamResources;

    move-result-object v4

    .line 1549
    .local v4, "sr":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    if-eqz v3, :cond_4

    iget v5, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    :goto_3
    iput v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    .line 1550
    sget-object v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    iget v0, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1551
    .local v0, "forcedStreamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1552
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .end local v0    # "forcedStreamType":I
    .end local v3    # "mute":Z
    .end local v4    # "sr":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_2
    move v3, v7

    .line 1545
    goto :goto_1

    .line 1547
    .restart local v3    # "mute":Z
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "Stream"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1549
    .restart local v4    # "sr":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_4
    iget v5, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 478
    const-string v3, "VolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 481
    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 482
    const-string v3, "  mHasVibrator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 483
    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 484
    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 485
    const-string v3, "  mNotificationEffectsSuppressor="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 486
    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 487
    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 488
    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 489
    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 490
    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 491
    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 492
    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 493
    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 496
    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 498
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/volume/ZenModePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 517
    :cond_1
    return-void

    .line 494
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 500
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 501
    .local v0, "N":I
    const-string v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 503
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 504
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_4

    .line 506
    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 507
    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 508
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    :cond_4
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getDialogLayoutParams(Landroid/view/Window;Landroid/content/res/Resources;)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 355
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 356
    const v1, 0x7f0d0082

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 357
    const/16 v1, 0x7de

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 358
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 359
    const v1, 0x7f0b002d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 360
    const-string v1, "VolumePanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    return-object v0
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 1425
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1428
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1433
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1438
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1443
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1448
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1453
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1458
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1459
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1460
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    .line 1461
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1462
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v1, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1466
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1467
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1468
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1471
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1478
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateActiveSlider()V

    goto :goto_0

    .line 1485
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto :goto_0

    .line 1490
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1494
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1498
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 1502
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    .line 1506
    :pswitch_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    .line 1507
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto/16 :goto_0

    .line 1511
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    .line 1425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->updateLocale()V

    .line 466
    :cond_0
    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1338
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1340
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1341
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1342
    monitor-exit v1

    .line 1355
    :goto_0
    return-void

    .line 1344
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v2, p0, v3}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 1345
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 1349
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1350
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    goto :goto_0

    .line 1346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1352
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1353
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1413
    monitor-enter p0

    .line 1414
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1415
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1418
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1414
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1420
    :cond_1
    monitor-exit p0

    .line 1421
    return-void

    .line 1420
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1056
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1060
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 1061
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1064
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    .line 1065
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x3

    .line 1232
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1235
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 1238
    :cond_0
    monitor-enter p0

    .line 1239
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 1240
    .local v0, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 1241
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1242
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1244
    :cond_1
    monitor-exit p0

    .line 1245
    return-void

    .line 1244
    .end local v0    # "toneGen":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0xc8

    .line 1272
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1276
    :cond_1
    monitor-enter p0

    .line 1277
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1278
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 1280
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1281
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1287
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1289
    return-void

    .line 1281
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1283
    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1292
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1296
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1298
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1070
    .local v0, "index":I
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    .line 1072
    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 1073
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onShowVolumeChanged(streamType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 1080
    .local v1, "max":I
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1082
    .local v4, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    sparse-switch p1, :sswitch_data_0

    .line 1163
    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v4, :cond_6

    .line 1164
    const/16 v7, -0xc8

    if-ne p1, v7, :cond_3

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eq p3, v7, :cond_3

    .line 1165
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v7, :cond_2

    .line 1166
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1168
    :cond_2
    iput-object p3, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1169
    if-eqz p3, :cond_3

    .line 1170
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1173
    :cond_3
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v7, v1, :cond_4

    .line 1174
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1176
    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v2

    .line 1178
    .local v2, "muted":Z
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v4, v2, v7}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1179
    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1181
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1182
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    .line 1183
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1184
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/ZenModePanel;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v7}, Lcom/android/systemui/volume/ZenModePanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1186
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1190
    .end local v2    # "muted":Z
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1191
    const/16 v7, -0xc8

    if-ne p1, v7, :cond_12

    const/4 v5, -0x1

    .line 1193
    .local v5, "stream":I
    :goto_2
    const/16 v7, -0x64

    if-eq v5, v7, :cond_7

    .line 1194
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1196
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1197
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v7, :cond_8

    .line 1198
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1200
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->announceDialogShown()V

    .line 1204
    .end local v5    # "stream":I
    :cond_9
    const/16 v7, -0xc8

    if-eq p1, v7, :cond_a

    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_a

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 1208
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1212
    :cond_a
    and-int/lit16 v7, p2, 0x80

    if-eqz v7, :cond_b

    .line 1213
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    .line 1217
    :cond_b
    and-int/lit16 v7, p2, 0x800

    if-eqz v7, :cond_c

    .line 1218
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showVibrateHint()V

    .line 1220
    :cond_c
    return-void

    .line 1085
    :sswitch_1
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1087
    .local v3, "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1088
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1095
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x380

    if-eqz v7, :cond_d

    .line 1099
    const v7, 0x7f020022

    const v8, 0x7f020023

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1101
    :cond_d
    const v7, 0x7f020026

    const v8, 0x7f020027

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1112
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 1113
    add-int/lit8 v1, v1, 0x1

    .line 1114
    goto/16 :goto_0

    .line 1122
    :sswitch_4
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1124
    .restart local v3    # "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1125
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1136
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 1137
    add-int/lit8 v1, v1, 0x1

    .line 1138
    goto/16 :goto_0

    .line 1142
    :sswitch_6
    if-nez p3, :cond_e

    if-eqz v4, :cond_e

    .line 1144
    iget-object p3, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1146
    :cond_e
    if-nez p3, :cond_10

    .line 1148
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v8, "sent remote volume change without a controller!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_f
    :goto_3
    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showing remote volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " over "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1150
    :cond_10
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v6

    .line 1151
    .local v6, "vi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    .line 1152
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    .line 1153
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v7

    and-int/lit8 v7, v7, 0x0

    if-eqz v7, :cond_f

    .line 1155
    or-int/lit8 p2, p2, 0x20

    goto :goto_3

    .line 1178
    .end local v6    # "vi":Landroid/media/session/MediaController$PlaybackInfo;
    .restart local v2    # "muted":Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_1

    .end local v2    # "muted":Z
    :cond_12
    move v5, p1

    .line 1191
    goto/16 :goto_2

    .line 1082
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 1323
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1325
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1326
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1327
    .local v2, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1328
    iput-boolean v1, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 1329
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1330
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1324
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1325
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1323
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1249
    monitor-enter p0

    .line 1250
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1251
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1252
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1253
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 1254
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1251
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1257
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 1258
    return-void

    .line 1257
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1026
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 1030
    monitor-enter p0

    .line 1031
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 1032
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 1034
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1035
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 1039
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1040
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 1044
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1045
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1046
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 1049
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1050
    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1051
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1052
    return-void

    .line 1035
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDismiss(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1003
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    .line 1004
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0xb

    .line 998
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 999
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v1, 0xc

    .line 1007
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1009
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 994
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMuteChanged(II)V

    .line 995
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 979
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 980
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    :goto_0
    return-void

    .line 984
    :cond_0
    monitor-enter p0

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 986
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 988
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 990
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 988
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 956
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 958
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 945
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 946
    :cond_0
    monitor-enter p0

    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 950
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 952
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 950
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 934
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 935
    :cond_0
    monitor-enter p0

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 937
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 939
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 941
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumePanel$Callback;

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    .line 884
    return-void
.end method

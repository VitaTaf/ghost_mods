.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$1;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field protected static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPauseTime:J

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 123
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 98
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 111
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 130
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 145
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 155
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 171
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 181
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 187
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 194
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 200
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 207
    const/high16 v0, 0x43960000    # 300.0f

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 208
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    .line 211
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 212
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    .line 216
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 230
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 289
    return-void
.end method

.method static synthetic access$000(Landroid/animation/ValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method static synthetic access$200(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/animation/ValueAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method public static clearAllAnimations()V
    .locals 2

    .prologue
    .line 1458
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1459
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    .line 1460
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1461
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1462
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1464
    :cond_0
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1239
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v4, :cond_0

    .line 1240
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1241
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1243
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v4, :cond_2

    .line 1244
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 1245
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1263
    :cond_1
    :goto_0
    return v2

    .line 1248
    :cond_2
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v4, :cond_3

    .line 1249
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1250
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 1252
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1255
    :cond_3
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v4

    .line 1256
    .local v0, "deltaTime":J
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 1259
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long v4, v0, v4

    sub-long v4, p1, v4

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1260
    iput v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    move v2, v3

    .line 1261
    goto :goto_0
.end method

.method public static getCurrentAnimationsCount()I
    .locals 2

    .prologue
    .line 1447
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1448
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDurationScale()F
    .locals 1

    .prologue
    .line 280
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 799
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;
    .locals 2

    .prologue
    .line 1467
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1468
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_0

    .line 1469
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .end local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$1;)V

    .line 1470
    .restart local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1472
    :cond_0
    return-object v0
.end method

.method private notifyStartListeners()V
    .locals 4

    .prologue
    .line 992
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v3, :cond_0

    .line 993
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 995
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 996
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 997
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1001
    return-void
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 320
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 321
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 322
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 323
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .prologue
    .line 338
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 339
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 340
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 303
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 304
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 305
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 375
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 376
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 377
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 378
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 352
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 353
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 354
    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    .prologue
    .line 273
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 274
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 815
    invoke-static {p0, p1}, Landroid/view/Choreographer;->setFrameDelay(J)V

    .line 816
    return-void
.end method

.method private start(Z)V
    .locals 10
    .param p1, "playBackwards"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1017
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1018
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "Animators may only be run on Looper threads"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1020
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1021
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1022
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    .line 1023
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_6

    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    if-nez v2, :cond_6

    .line 1025
    iput v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1031
    :goto_0
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-int v2, v2

    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1032
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    rem-float/2addr v2, v7

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1034
    :cond_1
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    if-lez v2, :cond_3

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v5, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    if-lt v2, v5, :cond_2

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-ne v2, v8, :cond_3

    .line 1038
    :cond_2
    if-eqz p1, :cond_9

    .line 1039
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1044
    :cond_3
    :goto_2
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1045
    .local v1, "prevPlayingState":I
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1046
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1047
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1048
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1049
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    .line 1050
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 1051
    .local v0, "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v2, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    .line 1054
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 1055
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 1057
    :cond_4
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1058
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1059
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1061
    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator$AnimationHandler;->start()V

    .line 1062
    return-void

    .line 1026
    .end local v0    # "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    .end local v1    # "prevPlayingState":I
    :cond_6
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-ne v2, v8, :cond_7

    .line 1027
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    rem-float/2addr v2, v7

    sub-float v2, v7, v2

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .line 1029
    :cond_7
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v5, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    int-to-float v5, v5

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    add-float/2addr v5, v6

    sub-float/2addr v2, v5

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    :cond_8
    move v2, v4

    .line 1039
    goto :goto_1

    .line 1041
    :cond_9
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_3
.end method

.method private startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 4
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v2, 0x8

    .line 1207
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1211
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1212
    iget-object v0, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1216
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1218
    :cond_1
    return-void
.end method

.method private updateScaledDuration()V
    .locals 2

    .prologue
    .line 542
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 543
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 907
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 910
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 1381
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1382
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1383
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1384
    .local v2, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1385
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1387
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1388
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1389
    .local v1, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1390
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1389
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1393
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 1279
    const/4 v0, 0x0

    .line 1280
    .local v0, "done":Z
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1318
    :goto_0
    return v0

    .line 1283
    :pswitch_0
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v5, v6

    div-float v1, v4, v5

    .line 1284
    .local v1, "fraction":F
    :goto_1
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1286
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1287
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-nez v4, :cond_0

    .line 1288
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1291
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_5

    .line 1292
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v5, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1294
    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1295
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1296
    .local v3, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1297
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1296
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1283
    .end local v1    # "fraction":F
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1300
    .restart local v1    # "fraction":F
    :cond_3
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1301
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1303
    :cond_4
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1304
    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v1, v4

    .line 1305
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1311
    :cond_5
    :goto_4
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_6

    .line 1312
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    .line 1314
    :cond_6
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto/16 :goto_0

    .line 1301
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 1307
    :cond_8
    const/4 v0, 0x1

    .line 1308
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    .line 1164
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 1073
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 1074
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1078
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1079
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v4, :cond_2

    .line 1081
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1083
    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1085
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 1086
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1089
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 1091
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1397
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1398
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1399
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1401
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1402
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1403
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1404
    iput v7, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1405
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1406
    iput v7, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1407
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1408
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1409
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    .line 1410
    array-length v3, v4

    .line 1411
    .local v3, "numValues":I
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1412
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1413
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1414
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1415
    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    .line 1416
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1419
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method final doAnimationFrame(J)Z
    .locals 11
    .param p1, "frameTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 1328
    iget v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v5, :cond_0

    .line 1329
    const/4 v5, 0x1

    iput v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1330
    iget v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 1331
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1338
    :cond_0
    :goto_0
    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v5, :cond_3

    .line 1339
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 1340
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1355
    :cond_1
    :goto_1
    return v4

    .line 1333
    :cond_2
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v5, v6

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v5, v6

    float-to-long v2, v5

    .line 1334
    .local v2, "seekTime":J
    sub-long v6, p1, v2

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1335
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .line 1343
    .end local v2    # "seekTime":J
    :cond_3
    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v5, :cond_4

    .line 1344
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1345
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    .line 1347
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1354
    :cond_4
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1355
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v4

    goto :goto_1
.end method

.method public end()V
    .locals 2

    .prologue
    .line 1095
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 1096
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1098
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1099
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 1100
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1104
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1105
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 1106
    return-void

    .line 1101
    :cond_1
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v1, :cond_0

    .line 1102
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 1104
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method protected endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 8
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v6, 0x8

    const/4 v4, 0x0

    .line 1173
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1174
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1175
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1176
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1177
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1178
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1179
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_1

    .line 1181
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1183
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1185
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1186
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1187
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1191
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1192
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1193
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1194
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1195
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1196
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1197
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1200
    :cond_3
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 832
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 835
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 849
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 850
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 854
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 629
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 630
    :cond_0
    const-wide/16 v0, 0x0

    .line 632
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1224
    const-string v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 772
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 512
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 513
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 514
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 515
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 519
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1128
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1133
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1118
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1119
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1120
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1121
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1122
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1124
    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 931
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 935
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1113
    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1114
    return-void
.end method

.method public reverse()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1145
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1146
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_2

    .line 1147
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1148
    .local v2, "currentTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v10

    .line 1149
    .local v0, "currentPlayTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mDuration:J

    sub-long v4, v10, v0

    .line 1150
    .local v4, "timeLeft":J
    sub-long v10, v2, v4

    iput-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1151
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-nez v6, :cond_1

    :goto_1
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1157
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_2
    return-void

    :cond_0
    move v6, v8

    .line 1145
    goto :goto_0

    .restart local v0    # "currentPlayTime":J
    .restart local v2    # "currentTime":J
    .restart local v4    # "timeLeft":J
    :cond_1
    move v7, v8

    .line 1151
    goto :goto_1

    .line 1152
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :cond_2
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v6, :cond_3

    .line 1153
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_2

    .line 1155
    :cond_3
    invoke-direct {p0, v7}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_2
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 1523
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 12
    .param p1, "fraction"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    .line 587
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 588
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 589
    const/4 p1, 0x0

    .line 591
    :cond_0
    float-to-int v2, p1

    .line 592
    .local v2, "iteration":I
    cmpl-float v3, p1, v10

    if-nez v3, :cond_3

    .line 593
    add-int/lit8 v2, v2, -0x1

    .line 607
    :goto_0
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 608
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v3, v8

    mul-float/2addr v3, p1

    float-to-long v4, v3

    .line 609
    .local v4, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 610
    .local v0, "currentTime":J
    sub-long v8, v0, v4

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 611
    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v3, v6, :cond_1

    .line 612
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 613
    iput v11, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 615
    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v3, :cond_2

    .line 616
    sub-float p1, v10, p1

    .line 618
    :cond_2
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 619
    return-void

    .line 594
    .end local v0    # "currentTime":J
    .end local v4    # "seekTime":J
    :cond_3
    cmpl-float v3, p1, v10

    if-lez v3, :cond_8

    .line 595
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_4

    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    .line 596
    :cond_4
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v3, v11, :cond_5

    .line 597
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_6

    move v3, v6

    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 599
    :cond_5
    rem-float/2addr p1, v10

    goto :goto_0

    .line 597
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 601
    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 602
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 605
    :cond_8
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    .prologue
    .line 565
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    long-to-float v1, p1

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 566
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 567
    return-void

    .line 565
    .end local v0    # "fraction":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 532
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    .line 537
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    .line 538
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .prologue
    .line 986
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 987
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 989
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 424
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 428
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 434
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 430
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 431
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    const/4 v3, 0x0

    .line 396
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 400
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 406
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 402
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 403
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 952
    if-eqz p1, :cond_0

    .line 953
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 957
    :goto_0
    return-void

    .line 955
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 456
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 460
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 466
    :goto_1
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 462
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .line 463
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 867
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 868
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 887
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 888
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 782
    long-to-float v0, p1

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 783
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    .line 784
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 478
    array-length v1, p1

    .line 479
    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 480
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 482
    aget-object v2, p1, v0

    .line 483
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 487
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1067
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1483
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

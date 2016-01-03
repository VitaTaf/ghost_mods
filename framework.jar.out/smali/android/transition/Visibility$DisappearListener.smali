.class Landroid/transition/Visibility$DisappearListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/Animator$AnimatorPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private final mIsForcedVisibility:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "isForcedVisibility"    # Z

    .prologue
    .line 513
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 514
    iput-object p1, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 515
    iput-boolean p3, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    .line 516
    iput p2, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 517
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    .prologue
    .line 559
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 560
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 536
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 550
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 551
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 541
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 546
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 555
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 556
    return-void
.end method

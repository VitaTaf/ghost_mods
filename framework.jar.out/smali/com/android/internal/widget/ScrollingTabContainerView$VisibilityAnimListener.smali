.class public Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 1

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 605
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 599
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 609
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 591
    iput-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 592
    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 583
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 584
    return-object p0
.end method

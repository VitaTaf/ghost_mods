.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

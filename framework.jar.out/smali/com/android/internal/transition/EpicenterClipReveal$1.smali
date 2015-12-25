.class Lcom/android/internal/transition/EpicenterClipReveal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EpicenterClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/transition/EpicenterClipReveal;->createRectAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/transition/EpicenterClipReveal;

.field final synthetic val$terminalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/transition/EpicenterClipReveal;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/transition/EpicenterClipReveal$1;->this$0:Lcom/android/internal/transition/EpicenterClipReveal;

    iput-object p2, p0, Lcom/android/internal/transition/EpicenterClipReveal$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/transition/EpicenterClipReveal$1;->val$terminalClip:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterClipReveal$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/transition/EpicenterClipReveal$1;->val$terminalClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 132
    return-void
.end method

.class Landroid/widget/PopupWindow$4;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1579
    iput-object p1, p0, Landroid/widget/PopupWindow$4;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1582
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1583
    iget-object v0, p0, Landroid/widget/PopupWindow$4;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$800(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1585
    iget-object v0, p0, Landroid/widget/PopupWindow$4;->this$0:Landroid/widget/PopupWindow;

    # invokes: Landroid/widget/PopupWindow;->dismissImmediate()V
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)V

    .line 1586
    return-void
.end method

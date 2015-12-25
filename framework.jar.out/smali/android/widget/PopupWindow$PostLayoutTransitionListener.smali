.class Landroid/widget/PopupWindow$PostLayoutTransitionListener;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostLayoutTransitionListener"
.end annotation


# instance fields
.field private final mSceneRoot:Landroid/view/ViewGroup;

.field private final mTransition:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    iput-object p1, p0, Landroid/widget/PopupWindow$PostLayoutTransitionListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 1891
    iput-object p2, p0, Landroid/widget/PopupWindow$PostLayoutTransitionListener;->mTransition:Landroid/transition/Transition;

    .line 1892
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 1896
    iget-object v4, p0, Landroid/widget/PopupWindow$PostLayoutTransitionListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1897
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    if-nez v2, :cond_1

    .line 1917
    :cond_0
    return-void

    .line 1902
    :cond_1
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1905
    iget-object v4, p0, Landroid/widget/PopupWindow$PostLayoutTransitionListener;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v4}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v3

    .line 1906
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1907
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1908
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1911
    :cond_2
    iget-object v4, p0, Landroid/widget/PopupWindow$PostLayoutTransitionListener;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/PopupWindow$PostLayoutTransitionListener;->mTransition:Landroid/transition/Transition;

    invoke-static {v4, v5}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1914
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    .line 1915
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1914
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

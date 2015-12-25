.class Landroid/widget/PopupWindow$1;
.super Landroid/transition/Transition$EpicenterCallback;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
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
    .line 135
    iput-object p1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    .line 139
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v3

    .line 140
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v6

    .line 150
    :goto_1
    return-object v1

    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "decor":Landroid/view/View;
    :cond_1
    move-object v0, v6

    .line 138
    goto :goto_0

    .line 143
    .restart local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchorBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$200(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;

    move-result-object v1

    .line 144
    .local v1, "anchorBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    .line 145
    .local v2, "anchorLocation":[I
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v4

    .line 147
    .local v4, "popupLocation":[I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    aget v5, v2, v7

    aget v6, v4, v7

    sub-int/2addr v5, v6

    aget v6, v2, v8

    aget v7, v4, v8

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

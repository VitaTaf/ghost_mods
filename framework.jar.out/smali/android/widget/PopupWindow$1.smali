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
    .line 132
    iput-object p1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 136
    .local v0, "anchor":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v3

    .line 137
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    .line 140
    :cond_1
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchorBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$200(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;

    move-result-object v1

    .line 141
    .local v1, "anchorBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    .line 142
    .local v2, "anchorLocation":[I
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v4

    .line 144
    .local v4, "popupLocation":[I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 145
    aget v5, v2, v7

    aget v6, v4, v7

    sub-int/2addr v5, v6

    aget v6, v2, v8

    aget v7, v4, v8

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

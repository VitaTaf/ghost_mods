.class Landroid/view/ViewRootImpl$PPListener;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Lcom/motorola/pixelpipe/PixelPipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewRootImpl;
    .param p2, "x1"    # Landroid/view/ViewRootImpl$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$PPListener;-><init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method


# virtual methods
.method public onSetEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mPixelPipeEnabled:Z

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v1, Landroid/view/View$AttachInfo;->mPixelPipeEnabled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mPixelPipeEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

    iget-object v2, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    invoke-interface {v1, v2}, Lcom/motorola/pixelpipe/PixelPipeApi;->onVisibilityChanged(I)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

    iget-object v2, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-interface {v1, v2}, Lcom/motorola/pixelpipe/PixelPipeApi;->onFocusChanged(Z)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v2, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget-object v3, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mWidth:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget-object v5, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v5, v5, Landroid/view/ViewRootImpl;->mHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/ViewRootImpl$PPListener;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

    invoke-interface {v1, v0}, Lcom/motorola/pixelpipe/PixelPipeApi;->onMovedOrResized(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

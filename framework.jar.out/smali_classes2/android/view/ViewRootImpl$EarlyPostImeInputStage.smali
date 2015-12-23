.class final Landroid/view/ViewRootImpl$EarlyPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EarlyPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 3942
    iput-object p1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 3943
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 3944
    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3960
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 3964
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3965
    const/4 v1, 0x1

    .line 3971
    :goto_0
    return v1

    .line 3970
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, v0}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 3971
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v3, 0x1

    .line 3975
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    .line 3979
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mPixelPipeEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

    if-eqz v4, :cond_0

    .line 3980
    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mPixelPipeTarget:Lcom/motorola/pixelpipe/PixelPipeApi;

    invoke-interface {v4, v1}, Lcom/motorola/pixelpipe/PixelPipeApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 3981
    .local v2, "handled":Z
    if-eqz v2, :cond_0

    .line 4008
    .end local v2    # "handled":Z
    :goto_0
    return v3

    .line 3988
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_1

    .line 3989
    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 3993
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3994
    .local v0, "action":I
    if-eqz v0, :cond_2

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    .line 3995
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 3999
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v3, :cond_4

    .line 4000
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4004
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4005
    iget-object v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 4006
    iget-object v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 4008
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3948
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 3949
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    .line 3956
    :goto_0
    return v1

    .line 3951
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 3952
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3953
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0

    .line 3956
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

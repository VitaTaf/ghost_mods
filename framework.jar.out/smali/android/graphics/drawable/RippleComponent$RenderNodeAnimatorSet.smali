.class public Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderNodeAnimatorSet"
.end annotation


# instance fields
.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/RenderNodeAnimator;)V
    .locals 1
    .param p1, "anim"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 292
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 314
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 315
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 316
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 317
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNodeAnimator;

    .line 318
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 297
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    .line 323
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 324
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 325
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 326
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNodeAnimator;

    .line 327
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->end()V

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    .line 332
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 333
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 334
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 335
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNodeAnimator;

    .line 336
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    const/4 v4, 0x1

    .line 340
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :goto_1
    return v4

    .line 334
    .restart local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public start(Landroid/view/HardwareCanvas;)V
    .locals 6
    .param p1, "target"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Hardware canvas must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 305
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 306
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 307
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNodeAnimator;

    .line 308
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_1
    return-void
.end method

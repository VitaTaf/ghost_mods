.class public Lcom/android/settings/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# instance fields
.field private mAnimating:Z

.field private mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateAnimating()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    goto :goto_0
.end method

.method private updateDrawable()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    :cond_1
    :goto_0
    return-void

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "vis"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/widget/AnimatedImageView;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method

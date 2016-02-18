.class final Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "AnimatedRotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatedRotateState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mFrameDuration:I

.field mFramesCount:I

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z

.field mThemeAttrs:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    const/16 v0, 0x96

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    const/16 v0, 0xc

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    iget-boolean v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    :cond_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mCanConstantState:Z

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mCheckedConstantState:Z

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mCanConstantState:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable$1;)V

    return-object v0
.end method

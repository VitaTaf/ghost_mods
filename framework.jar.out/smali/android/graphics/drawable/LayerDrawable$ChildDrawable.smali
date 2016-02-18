.class Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mGravity:I

.field public mHeight:I

.field public mId:I

.field public mInsetB:I

.field public mInsetE:I

.field public mInsetL:I

.field public mInsetR:I

.field public mInsetS:I

.field public mInsetT:I

.field public mThemeAttrs:[I

.field public mWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-eqz p3, :cond_0

    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return-void

    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

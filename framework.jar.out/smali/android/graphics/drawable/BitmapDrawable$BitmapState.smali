.class final Landroid/graphics/drawable/BitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mBaseAlpha:F

.field mBitmap:Landroid/graphics/Bitmap;

.field mChangingConfigurations:I

.field mGravity:I

.field final mPaint:Landroid/graphics/Paint;

.field mRebuildShader:Z

.field mTargetDensity:I

.field mThemeAttrs:[I

.field mTileModeX:Landroid/graphics/Shader$TileMode;

.field mTileModeY:Landroid/graphics/Shader$TileMode;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 900
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 886
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    .line 887
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 888
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    .line 889
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 890
    const/16 v0, 0x77

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 891
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    .line 892
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 893
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 894
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    .line 901
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 902
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 903
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V
    .locals 2
    .param p1, "bitmapState"    # Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .prologue
    const/4 v1, 0x0

    .line 905
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 886
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    .line 887
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 888
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    .line 889
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 890
    const/16 v0, 0x77

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 891
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    .line 892
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 893
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 894
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    .line 906
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 907
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    .line 908
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 909
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    .line 910
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 911
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 912
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 913
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 914
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 915
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    .line 916
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 917
    iget-boolean v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    .line 918
    iget-boolean v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    .line 919
    return-void
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->isAtlasable(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 936
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 941
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable$1;)V

    return-object v0
.end method

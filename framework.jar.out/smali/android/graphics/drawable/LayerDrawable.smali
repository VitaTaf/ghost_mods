.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$LayerState;,
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field public static final PADDING_MODE_NEST:I = 0x0

.field public static final PADDING_MODE_STACK:I = 0x1

.field private static final UNDEFINED_INSET:I = -0x80000000


# instance fields
.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mOpacityOverride:I

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 133
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 137
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    if-lez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 140
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 105
    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .locals 6
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .prologue
    .line 115
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 117
    array-length v1, p1

    .line 118
    .local v1, "length":I
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 119
    .local v2, "r":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 120
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v3, v2, v0

    .line 121
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 123
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 126
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 129
    return-void
.end method

.method private computeNestedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 673
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 674
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 675
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 676
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 679
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 680
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 681
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 682
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 684
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 685
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 686
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 687
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    :cond_0
    return-void
.end method

.method private computeStackedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 692
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 693
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 694
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 695
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 698
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 699
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 700
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 701
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 703
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 704
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 705
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 706
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    :cond_0
    return-void
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 186
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 188
    .local v4, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 192
    .local v2, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v2, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 193
    :cond_1
    if-ne v5, v8, :cond_0

    .line 197
    if-gt v1, v2, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    .line 202
    .local v3, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    sget-object v6, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    .line 207
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 209
    if-eq v5, v8, :cond_3

    .line 210
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "child tag defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    :cond_4
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 218
    iget v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v7, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 220
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 223
    :cond_5
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)V

    goto :goto_0

    .line 225
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v3    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_6
    return-void
.end method

.method private refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3
    .param p1, "i"    # I
    .param p2, "r"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .prologue
    .line 1071
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 1072
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1073
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    .line 1075
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    .line 1076
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    .line 1077
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    .line 1078
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    .line 1079
    const/4 v1, 0x1

    .line 1081
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveGravity(III)I
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 994
    invoke-static {p1}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    if-gez p2, :cond_2

    .line 996
    or-int/lit8 p1, p1, 0x7

    .line 1002
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1003
    if-gez p3, :cond_3

    .line 1004
    or-int/lit8 p1, p1, 0x70

    .line 1010
    :cond_1
    :goto_1
    return p1

    .line 998
    :cond_2
    const v0, 0x800003

    or-int/2addr p1, v0

    goto :goto_0

    .line 1006
    :cond_3
    or-int/lit8 p1, p1, 0x30

    goto :goto_1
.end method

.method private setLayerInsetInternal(IIIIIII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "s"    # I
    .param p7, "e"    # I

    .prologue
    .line 590
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 591
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 592
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 593
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 594
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 595
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 596
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 597
    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 27
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 931
    const/16 v18, 0x0

    .line 932
    .local v18, "padL":I
    const/16 v20, 0x0

    .line 933
    .local v20, "padT":I
    const/16 v19, 0x0

    .line 934
    .local v19, "padR":I
    const/16 v17, 0x0

    .line 936
    .local v17, "padB":I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 937
    .local v8, "outRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v9

    .line 938
    .local v9, "layoutDirection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v22, v0

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v22

    if-nez v22, :cond_1

    const/16 v16, 0x1

    .line 939
    .local v16, "nest":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 940
    .local v11, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 941
    .local v10, "N":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_9

    .line 942
    aget-object v21, v11, v13

    .line 943
    .local v21, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    move-object/from16 v0, v21

    iget-object v12, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 944
    .local v12, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 952
    .local v7, "container":Landroid/graphics/Rect;
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_4

    .line 953
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 954
    .local v14, "insetL":I
    :goto_2
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 962
    .local v15, "insetR":I
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v14

    add-int v22, v22, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v23, v23, v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v24, v15

    sub-int v24, v24, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v25, v25, v17

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 966
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(III)I

    move-result v4

    .line 967
    .local v4, "gravity":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    move/from16 v22, v0

    if-gez v22, :cond_7

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 968
    .local v5, "w":I
    :goto_4
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    move/from16 v22, v0

    if-gez v22, :cond_8

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 969
    .local v6, "h":I
    :goto_5
    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 970
    invoke-virtual {v12, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 972
    if-eqz v16, :cond_0

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    add-int v18, v18, v22

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    add-int v19, v19, v22

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    add-int v20, v20, v22

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    add-int v17, v17, v22

    .line 941
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 938
    .end local v4    # "gravity":I
    .end local v5    # "w":I
    .end local v6    # "h":I
    .end local v7    # "container":Landroid/graphics/Rect;
    .end local v10    # "N":I
    .end local v11    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    .end local v13    # "i":I
    .end local v14    # "insetL":I
    .end local v15    # "insetR":I
    .end local v16    # "nest":Z
    .end local v21    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 953
    .restart local v7    # "container":Landroid/graphics/Rect;
    .restart local v10    # "N":I
    .restart local v11    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v12    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "i":I
    .restart local v16    # "nest":Z
    .restart local v21    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto/16 :goto_2

    .line 954
    .restart local v14    # "insetL":I
    :cond_3
    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto/16 :goto_3

    .line 956
    .end local v14    # "insetL":I
    :cond_4
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 957
    .restart local v14    # "insetL":I
    :goto_6
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .restart local v15    # "insetR":I
    :goto_7
    goto/16 :goto_3

    .line 956
    .end local v14    # "insetL":I
    .end local v15    # "insetR":I
    :cond_5
    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_6

    .line 957
    .restart local v14    # "insetL":I
    :cond_6
    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_7

    .line 967
    .restart local v4    # "gravity":I
    .restart local v15    # "insetR":I
    :cond_7
    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    goto/16 :goto_4

    .line 968
    .restart local v5    # "w":I
    :cond_8
    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    goto :goto_5

    .line 979
    .end local v4    # "gravity":I
    .end local v5    # "w":I
    .end local v7    # "container":Landroid/graphics/Rect;
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    .end local v14    # "insetL":I
    .end local v15    # "insetR":I
    .end local v21    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_9
    return-void
.end method

.method private updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 228
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 231
    .local v1, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 234
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 236
    const/4 v2, 0x5

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 238
    const/4 v2, 0x6

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 240
    const/4 v2, 0x7

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 242
    const/16 v2, 0x8

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 244
    const/16 v2, 0x9

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 246
    const/16 v2, 0xa

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 248
    const/4 v2, 0x3

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 250
    const/4 v2, 0x2

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 252
    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 254
    const/4 v2, 0x1

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 256
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 258
    iput-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 168
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 171
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    .line 173
    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 175
    const/4 v1, 0x1

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    # setter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$002(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    .line 177
    const/4 v1, 0x2

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    # setter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$102(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    .line 179
    return-void
.end method


# virtual methods
.method addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 4
    .param p1, "layer"    # Landroid/graphics/drawable/Drawable;
    .param p2, "themeAttrs"    # [I
    .param p3, "id"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 354
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    .line 355
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 356
    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 357
    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 359
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 360
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 361
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 362
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 364
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)V

    .line 366
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 367
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 369
    return-object v0
.end method

.method addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)V
    .locals 6
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .prologue
    const/4 v4, 0x0

    .line 324
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 325
    .local v3, "st":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v5, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v0, v5

    .line 326
    .local v0, "N":I
    :goto_0
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 327
    .local v1, "i":I
    if-lt v1, v0, :cond_1

    .line 328
    add-int/lit8 v5, v0, 0xa

    new-array v2, v5, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 329
    .local v2, "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-lez v1, :cond_0

    .line 330
    iget-object v5, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    :cond_0
    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 336
    .end local v2    # "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object p1, v4, v1

    .line 337
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 338
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 339
    return-void

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    move v0, v4

    .line 325
    goto :goto_0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 266
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 267
    .local v6, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    if-nez v6, :cond_0

    .line 296
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v7, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    if-eqz v7, :cond_1

    .line 272
    iget-object v7, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    sget-object v8, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 273
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 274
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 278
    .local v2, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 279
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 280
    aget-object v5, v2, v4

    .line 281
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v7, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v7, :cond_2

    .line 282
    iget-object v7, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v8, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 284
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5, v1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 285
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 290
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 279
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 295
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getState()[I

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

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

.method public clearMutated()V
    .locals 4

    .prologue
    .line 1126
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1127
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1128
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1129
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1130
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1132
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1133
    return-void
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 143
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 647
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 648
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 649
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 650
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_0
    return-void
.end method

.method ensurePadding()V
    .locals 2

    .prologue
    .line 1088
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1089
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1093
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    .line 1094
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    .line 1095
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    .line 1096
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    goto :goto_0
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 383
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 384
    .local v1, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 385
    aget-object v2, v1, v0

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    .line 386
    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 390
    :goto_1
    return-object v2

    .line 384
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 794
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 795
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    if-lez v1, :cond_0

    .line 798
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    .line 800
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 656
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1103
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 419
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 755
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 760
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 430
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 12

    .prologue
    .line 1041
    const/4 v3, -0x1

    .line 1042
    .local v3, "height":I
    const/4 v8, 0x0

    .line 1043
    .local v8, "padT":I
    const/4 v7, 0x0

    .line 1045
    .local v7, "padB":I
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v10}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v10

    if-nez v10, :cond_2

    const/4 v6, 0x1

    .line 1046
    .local v6, "nest":Z
    :goto_0
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1047
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1048
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 1049
    aget-object v9, v1, v4

    .line 1050
    .local v9, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-gez v10, :cond_3

    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1051
    .local v5, "minHeight":I
    :goto_2
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v10, v5

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int v2, v10, v7

    .line 1052
    .local v2, "h":I
    if-le v2, v3, :cond_0

    .line 1053
    move v3, v2

    .line 1056
    :cond_0
    if-eqz v6, :cond_1

    .line 1057
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v10, v10, v4

    add-int/2addr v8, v10

    .line 1058
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v10, v10, v4

    add-int/2addr v7, v10

    .line 1048
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1045
    .end local v0    # "N":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "h":I
    .end local v4    # "i":I
    .end local v5    # "minHeight":I
    .end local v6    # "nest":Z
    .end local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1050
    .restart local v0    # "N":I
    .restart local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v4    # "i":I
    .restart local v6    # "nest":Z
    .restart local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    iget v5, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    goto :goto_2

    .line 1062
    .end local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_4
    return v3
.end method

.method public getIntrinsicWidth()I
    .locals 12

    .prologue
    .line 1015
    const/4 v9, -0x1

    .line 1016
    .local v9, "width":I
    const/4 v5, 0x0

    .line 1017
    .local v5, "padL":I
    const/4 v6, 0x0

    .line 1019
    .local v6, "padR":I
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v10}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v10

    if-nez v10, :cond_2

    const/4 v4, 0x1

    .line 1020
    .local v4, "nest":Z
    :goto_0
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1021
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1022
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1023
    aget-object v7, v1, v2

    .line 1024
    .local v7, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    if-gez v10, :cond_3

    iget-object v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1025
    .local v3, "minWidth":I
    :goto_2
    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v10, v3

    iget v11, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    add-int v8, v10, v6

    .line 1026
    .local v8, "w":I
    if-le v8, v9, :cond_0

    .line 1027
    move v9, v8

    .line 1030
    :cond_0
    if-eqz v4, :cond_1

    .line 1031
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v10, v10, v2

    add-int/2addr v5, v10

    .line 1032
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v10, v10, v2

    add-int/2addr v6, v10

    .line 1022
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1019
    .end local v0    # "N":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "i":I
    .end local v3    # "minWidth":I
    .end local v4    # "nest":Z
    .end local v7    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v8    # "w":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1024
    .restart local v0    # "N":I
    .restart local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v2    # "i":I
    .restart local v4    # "nest":Z
    .restart local v7    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    iget v3, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    goto :goto_2

    .line 1036
    .end local v7    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_4
    return v9
.end method

.method public getLayerGravity(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 548
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 549
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return v1
.end method

.method public getLayerHeight(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 511
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 512
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return v1
.end method

.method public getLayerWidth(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 499
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 500
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return v1
.end method

.method public getNumberOfLayers()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    if-eqz v0, :cond_0

    .line 849
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 851
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 717
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 718
    .local v3, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 719
    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 720
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 721
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 726
    :cond_0
    return-void

    .line 720
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 663
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    if-nez v0, :cond_1

    .line 664
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    .line 669
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 666
    :cond_1
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 669
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPaddingMode()I
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 151
    sget-object v1, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    .line 159
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 632
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 633
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public isProjected()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 308
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v3

    .line 312
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 313
    .local v2, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 314
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 315
    aget-object v4, v2, v1

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1110
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v3, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 1111
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1112
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1113
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1114
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1115
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1119
    .end local v0    # "N":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "i":I
    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 927
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 928
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 7
    .param p1, "level"    # I

    .prologue
    .line 902
    const/4 v4, 0x0

    .line 903
    .local v4, "paddingChanged":Z
    const/4 v2, 0x0

    .line 905
    .local v2, "changed":Z
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 906
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 907
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 908
    aget-object v5, v1, v3

    .line 909
    .local v5, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 910
    const/4 v2, 0x1

    .line 913
    :cond_0
    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 914
    const/4 v4, 0x1

    .line 907
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 918
    .end local v5    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 919
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 922
    :cond_3
    return v2
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    .line 877
    const/4 v4, 0x0

    .line 878
    .local v4, "paddingChanged":Z
    const/4 v2, 0x0

    .line 880
    .local v2, "changed":Z
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 881
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 882
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 883
    aget-object v5, v1, v3

    .line 884
    .local v5, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 885
    const/4 v2, 0x1

    .line 888
    :cond_0
    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 889
    const/4 v4, 0x1

    .line 882
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 893
    .end local v5    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 894
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 897
    :cond_3
    return v2
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 637
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 638
    return-void
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 785
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 786
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 787
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 788
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 787
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 790
    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 4
    .param p1, "mirrored"    # Z

    .prologue
    .line 856
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # setter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z
    invoke-static {v3, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$002(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    .line 858
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 859
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 860
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 861
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 860
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 863
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 806
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 807
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 808
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 809
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 4
    .param p1, "dither"    # Z

    .prologue
    .line 776
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 777
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 778
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 779
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 442
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v4, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 443
    .local v4, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 444
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 445
    aget-object v2, v4, v3

    .line 446
    .local v2, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v5, p1, :cond_3

    .line 447
    iget-object v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 448
    if-eqz p2, :cond_0

    .line 449
    iget-object v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 450
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 453
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_0
    iget-object v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 456
    :cond_1
    if-eqz p2, :cond_2

    .line 457
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 460
    :cond_2
    iput-object p2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 461
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 462
    const/4 v5, 0x1

    .line 466
    .end local v2    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :goto_1
    return v5

    .line 444
    .restart local v2    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    .end local v2    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setHotspot(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 730
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 731
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 732
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 733
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 732
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 739
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 740
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 741
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 742
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 746
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 750
    :goto_1
    return-void

    .line 748
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public setId(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "id"    # I

    .prologue
    .line 400
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 401
    return-void
.end method

.method public setLayerGravity(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 535
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 536
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 537
    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 567
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 568
    return-void
.end method

.method public setLayerInsetRelative(IIIII)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "e"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x0

    .line 586
    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, v2

    move v5, p5

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 587
    return-void
.end method

.method public setLayerSize(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 486
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 487
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 488
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 489
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1138
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 1139
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1140
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1141
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1142
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 1141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1145
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .param p1, "opacity"    # I

    .prologue
    .line 843
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 844
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 615
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # getter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 616
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    # setter for: Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I
    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$102(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    .line 618
    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 815
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 816
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 817
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 818
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 824
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 825
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 826
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 827
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 764
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 765
    .local v2, "changed":Z
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 766
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 767
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 768
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 771
    :cond_0
    return v2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 642
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 643
    return-void
.end method

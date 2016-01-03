.class public Landroid/graphics/drawable/InsetDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "InsetDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/InsetDrawable$1;,
        Landroid/graphics/drawable/InsetDrawable$InsetState;
    }
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "inset"    # I

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "insetLeft"    # I
    .param p3, "insetTop"    # I
    .param p4, "insetRight"    # I
    .param p5, "insetBottom"    # I

    .prologue
    const/4 v0, 0x0

    .line 95
    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>()V

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 97
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    if-nez p1, :cond_1

    :goto_0
    iput-object v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 98
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 99
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p3, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 100
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p4, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 101
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p5, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 103
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 108
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 518
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 520
    invoke-direct {p0, p2}, Landroid/graphics/drawable/InsetDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 521
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/InsetDrawable$1;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
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
    .line 142
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 144
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 146
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 147
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": <inset> tag requires a \'drawable\' attribute or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "child tag defining a drawable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 154
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 155
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "type":I
    :cond_2
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 127
    :cond_0
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 134
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 137
    :cond_1
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 529
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 531
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/high16 v8, -0x80000000

    .line 171
    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 174
    .local v5, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    .line 177
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v6

    iput-object v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    .line 179
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 180
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 181
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 182
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 185
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 186
    iget-object v6, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    iput-object v7, v6, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 187
    invoke-direct {p0, v2}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 191
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p1, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 192
    .local v4, "inset":I
    if-eq v4, v8, :cond_0

    .line 193
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 194
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 195
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 196
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    goto :goto_1

    .line 200
    .end local v4    # "inset":I
    :pswitch_2
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    goto :goto_1

    .line 203
    :pswitch_3
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    goto :goto_1

    .line 206
    :pswitch_4
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    goto :goto_1

    .line 209
    :pswitch_5
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    goto :goto_1

    .line 213
    .end local v1    # "attr":I
    :cond_1
    return-void

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v0, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v0, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <inset> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 219
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 220
    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    if-eqz v3, :cond_2

    .line 225
    iget-object v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 227
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 228
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 229
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->canApplyTheme()Z

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
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 439
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable;->mMutated:Z

    .line 441
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 272
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    .line 418
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 420
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 318
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 319
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 361
    .local v1, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 362
    .local v0, "opacity":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    if-lez v2, :cond_1

    .line 364
    :cond_0
    const/4 v0, -0x3

    .line 366
    .end local v0    # "opacity":I
    :cond_1
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 6

    .prologue
    .line 298
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 299
    .local v0, "contentInsets":Landroid/graphics/Insets;
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v5, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    add-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 411
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 412
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 284
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 286
    .local v0, "pad":Z
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 287
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 288
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 289
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 291
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    or-int/2addr v1, v2

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    or-int/2addr v1, v2

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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
    .line 113
    sget-object v1, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/InsetDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 116
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/InsetDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 118
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 249
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 425
    iget-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 426
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 427
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 428
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable;->mMutated:Z

    .line 431
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 388
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 389
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 391
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 392
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 393
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 394
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 396
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 383
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 376
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 377
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 378
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 257
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 260
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 329
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 339
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 340
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 308
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 312
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 313
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 356
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 345
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 349
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 350
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 324
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 265
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 268
    :cond_0
    return-void
.end method

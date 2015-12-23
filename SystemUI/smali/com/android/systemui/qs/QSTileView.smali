.class public Lcom/android/systemui/qs/QSTileView;
.super Landroid/view/ViewGroup;
.source "QSTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileView$H;
    }
.end annotation


# static fields
.field protected static final CONDENSED:Landroid/graphics/Typeface;


# instance fields
.field private mClickPrimary:Landroid/view/View$OnClickListener;

.field private mClickSecondary:Landroid/view/View$OnClickListener;

.field protected final mContext:Landroid/content/Context;

.field private final mDivider:Landroid/view/View;

.field private mDual:Z

.field private mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

.field private final mDualTileVerticalPaddingPx:I

.field private final mHandler:Lcom/android/systemui/qs/QSTileView$H;

.field private final mIcon:Landroid/view/View;

.field private final mIconSizePx:I

.field private mLabel:Landroid/widget/TextView;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private final mTilePaddingBelowIconPx:I

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I

.field private final mTopBackgroundView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v2, Lcom/android/systemui/qs/QSTileView$H;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSTileView$H;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    .line 79
    const v2, 0x7f0d0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 80
    const v2, 0x7f0d0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    .line 81
    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 85
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClipChildren(Z)V

    .line 87
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createIcon()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 93
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    .line 94
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    const v3, 0x7f08000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 96
    .local v0, "dh":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 102
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 258
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private labelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private static layout(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 296
    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    .line 231
    .local v0, "attrs":[I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 232
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 233
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-object v1
.end method

.method private recreateLabel()V
    .locals 10

    .prologue
    const v9, 0x7f0d0039

    const v8, 0x7f080010

    const v5, 0x1020016

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "labelText":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 128
    .local v0, "labelDescription":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 130
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 131
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSDualTileLabel;->getText()Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 137
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v3, :cond_4

    .line 141
    new-instance v3, Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/QSDualTileLabel;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 142
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setId(I)V

    .line 143
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setBackgroundResource(I)V

    .line 144
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v4, 0x7f0200f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setFirstLineCaret(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextColor(I)V

    .line 146
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    invoke-virtual {v3, v6, v4, v6, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setPadding(IIII)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    sget-object v4, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setClickable(Z)V

    .line 151
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setFocusable(Z)V

    .line 153
    if-eqz v1, :cond_2

    .line 154
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_2
    if-eqz v0, :cond_3

    .line 157
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 176
    :goto_0
    return-void

    .line 161
    :cond_4
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 162
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 163
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 166
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 170
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 171
    if-eqz v1, :cond_5

    .line 172
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 2
    .param p1, "tileBackground"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(II)V

    .line 213
    :cond_0
    return-void
.end method

.method private updateRippleSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 288
    div-int/lit8 v0, p1, 0x2

    .line 289
    .local v0, "cx":I
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 290
    .local v1, "cy":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 291
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 292
    return-void

    .line 289
    .end local v1    # "cy":I
    .end local v2    # "rad":I
    :cond_0
    div-int/lit8 v1, p2, 0x2

    goto :goto_0
.end method

.method private updateTopPadding()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 107
    .local v2, "padding":I
    const v4, 0x7f0d0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 108
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    .line 110
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->requestLayout()V

    .line 112
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 225
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 226
    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/QSTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 302
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 304
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v1, :cond_1

    .line 305
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 312
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 320
    :goto_1
    return-void

    .line 307
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_0

    .line 317
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "clickPrimary"    # Landroid/view/View$OnClickListener;
    .param p2, "clickSecondary"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    .line 218
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    .line 219
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    .line 220
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v3, 0x7f0d0039

    .line 116
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v3

    .line 264
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v0

    .line 266
    .local v0, "h":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    invoke-static {v4, v6, v5}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, "top":I
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    add-int/2addr v2, v4

    .line 270
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v2, v4

    .line 271
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 272
    .local v1, "iconLeft":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 273
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_0

    .line 274
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(II)V

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 278
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v4

    .line 279
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-static {v4, v6, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 281
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 284
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 244
    .local v3, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 245
    .local v0, "h":I
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    invoke-static {v4}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v2

    .line 246
    .local v2, "iconSpec":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 248
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 251
    :cond_0
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v4, v5

    invoke-static {v4}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v1

    .line 253
    .local v1, "heightSpec":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->measure(II)V

    .line 254
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/qs/QSTileView;->setMeasuredDimension(II)V

    .line 255
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 340
    return-void
.end method

.method public setDual(Z)Z
    .locals 6
    .param p1, "dual"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eq p1, v1, :cond_2

    move v0, v2

    .line 180
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 187
    :cond_1
    if-eqz p1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 191
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 192
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 202
    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setFocusable(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->postInvalidate()V

    .line 205
    return v0

    .end local v0    # "changed":Z
    :cond_2
    move v0, v3

    .line 179
    goto :goto_0

    .line 194
    .restart local v0    # "changed":Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 199
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    move v2, v3

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    const/16 v3, 0x8

    goto :goto_3
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 4
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const v3, 0x7f0f0013

    .line 323
    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 325
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v1, :cond_0

    .line 326
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 328
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 330
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 336
    :cond_1
    return-void

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

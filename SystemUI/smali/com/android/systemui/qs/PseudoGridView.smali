.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    sget-object v4, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v5

    .local v5, "isRtl":Z
    invoke-virtual {p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v1

    .local v1, "children":I
    iget v13, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v13, v1

    add-int/lit8 v13, v13, -0x1

    iget v14, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int v8, v13, v14

    .local v8, "rows":I
    const/4 v12, 0x0

    .local v12, "y":I
    const/4 v7, 0x0

    .local v7, "row":I
    :goto_0
    if-ge v7, v8, :cond_5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v11

    .local v11, "x":I
    :goto_1
    const/4 v6, 0x0

    .local v6, "maxHeight":I
    iget v13, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int v9, v7, v13

    .local v9, "startOfRow":I
    iget v13, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v13, v9

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "endOfRow":I
    move v4, v9

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .local v10, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .local v3, "height":I
    if-eqz v5, :cond_0

    sub-int/2addr v11, v10

    :cond_0
    add-int v13, v11, v10

    add-int v14, v12, v3

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v5, :cond_2

    iget v13, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v11, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "endOfRow":I
    .end local v3    # "height":I
    .end local v4    # "i":I
    .end local v6    # "maxHeight":I
    .end local v9    # "startOfRow":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "endOfRow":I
    .restart local v3    # "height":I
    .restart local v4    # "i":I
    .restart local v6    # "maxHeight":I
    .restart local v9    # "startOfRow":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_2
    iget v13, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v13, v10

    add-int/2addr v11, v13

    goto :goto_3

    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "height":I
    .end local v10    # "width":I
    :cond_3
    add-int/2addr v12, v6

    if-lez v7, :cond_4

    iget v13, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v12, v13

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v2    # "endOfRow":I
    .end local v4    # "i":I
    .end local v6    # "maxHeight":I
    .end local v9    # "startOfRow":I
    .end local v11    # "x":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/UnsupportedOperationException;

    const-string v16, "Needs a maximum width"

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .local v14, "width":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    sub-int v15, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    div-int v3, v15, v16

    .local v3, "childWidth":I
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "childWidthSpec":I
    const/4 v2, 0x0

    .local v2, "childHeightSpec":I
    const/4 v13, 0x0

    .local v13, "totalHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v5

    .local v5, "children":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v15, v5

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    div-int v11, v15, v16

    .local v11, "rows":I
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_0
    if-ge v10, v11, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int v12, v10, v15

    .local v12, "startOfRow":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v15, v12

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "endOfRow":I
    const/4 v8, 0x0

    .local v8, "maxHeight":I
    move v7, v12

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v1    # "child":Landroid/view/View;
    :cond_1
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .local v9, "maxHeightSpec":I
    move v7, v12

    :goto_2
    if-ge v7, v6, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-eq v15, v8, :cond_2

    invoke-virtual {v1, v4, v9}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v1    # "child":Landroid/view/View;
    :cond_3
    add-int/2addr v13, v8

    if-lez v10, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v13, v15

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v6    # "endOfRow":I
    .end local v7    # "i":I
    .end local v8    # "maxHeight":I
    .end local v9    # "maxHeightSpec":I
    .end local v12    # "startOfRow":I
    :cond_5
    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/systemui/qs/PseudoGridView;->getDefaultSize(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    return-void
.end method

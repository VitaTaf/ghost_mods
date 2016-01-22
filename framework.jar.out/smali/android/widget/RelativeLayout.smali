.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$1;,
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 194
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    .line 190
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data

    .line 194
    :array_1
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 203
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 205
    const v0, 0x800033

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 210
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 215
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 220
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 224
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 249
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 7
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 883
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 884
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 886
    invoke-direct {p0, p3, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 887
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_6

    .line 888
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 896
    :cond_0
    :goto_0
    invoke-direct {p0, p3, v4}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_7

    .line 898
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 904
    :cond_1
    :goto_1
    invoke-direct {p0, p3, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_8

    .line 906
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 911
    :cond_2
    :goto_2
    invoke-direct {p0, p3, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_9

    .line 913
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 920
    :cond_3
    :goto_3
    const/16 v1, 0x9

    aget v1, p3, v1

    if-eqz v1, :cond_4

    .line 921
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 924
    :cond_4
    const/16 v1, 0xb

    aget v1, p3, v1

    if-eqz v1, :cond_5

    .line 925
    if-ltz p2, :cond_5

    .line 926
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 929
    :cond_5
    return-void

    .line 890
    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_0

    aget v1, p3, v2

    if-eqz v1, :cond_0

    .line 891
    if-ltz p2, :cond_0

    .line 892
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 900
    :cond_7
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1

    aget v1, p3, v4

    if-eqz v1, :cond_1

    .line 901
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 907
    :cond_8
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_2

    aget v1, p3, v5

    if-eqz v1, :cond_2

    .line 908
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 914
    :cond_9
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_3

    aget v1, p3, v6

    if-eqz v1, :cond_3

    .line 915
    if-ltz p2, :cond_3

    .line 916
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 8
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    .line 932
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 935
    .local v2, "rules":[I
    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 936
    .local v1, "baselineOffset":I
    if-eq v1, v4, :cond_2

    .line 937
    if-eq p3, v4, :cond_0

    .line 938
    sub-int/2addr v1, p3

    .line 940
    :cond_0
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 941
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 993
    :cond_1
    :goto_0
    return-void

    .line 947
    :cond_2
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 948
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 950
    invoke-direct {p0, v2, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 951
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_8

    .line 952
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 960
    :cond_3
    :goto_1
    invoke-direct {p0, v2, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 961
    if-eqz v0, :cond_9

    .line 962
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 968
    :cond_4
    :goto_2
    invoke-direct {p0, v2, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 969
    if-eqz v0, :cond_a

    .line 970
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 975
    :cond_5
    :goto_3
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 976
    if-eqz v0, :cond_b

    .line 977
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 984
    :cond_6
    :goto_4
    const/16 v3, 0xa

    aget v3, v2, v3

    if-eqz v3, :cond_7

    .line 985
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 988
    :cond_7
    const/16 v3, 0xc

    aget v3, v2, v3

    if-eqz v3, :cond_1

    .line 989
    if-ltz p2, :cond_1

    .line 990
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 954
    :cond_8
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_3

    aget v3, v2, v5

    if-eqz v3, :cond_3

    .line 955
    if-ltz p2, :cond_3

    .line 956
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 964
    :cond_9
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_4

    aget v3, v2, v6

    if-eqz v3, :cond_4

    .line 965
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 971
    :cond_a
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_5

    aget v3, v2, v7

    if-eqz v3, :cond_5

    .line 972
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3

    .line 978
    :cond_b
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    aget v3, v2, v3

    if-eqz v3, :cond_6

    .line 979
    if-ltz p2, :cond_6

    .line 980
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_4
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .prologue
    .line 1043
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1044
    .local v0, "childWidth":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1046
    .local v1, "left":I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1047
    add-int v2, v1, v0

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1048
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .prologue
    .line 1051
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1052
    .local v0, "childHeight":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1054
    .local v1, "top":I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1055
    add-int v2, v1, v0

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1056
    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 3
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 647
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int v0, v1, v2

    .line 648
    .local v0, "topDiff":I
    if-eqz v0, :cond_0

    .line 651
    .end local v0    # "topDiff":I
    :goto_0
    return v0

    .restart local v0    # "topDiff":I
    :cond_0
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 7
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "childSpecMode":I
    const/4 v1, 0x0

    .line 733
    .local v1, "childSpecSize":I
    if-gez p8, :cond_2

    iget-boolean v5, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v5, :cond_2

    .line 734
    if-eq p1, v6, :cond_0

    if-eq p2, v6, :cond_0

    .line 736
    const/4 v5, 0x0

    sub-int v6, p2, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 737
    const/high16 v0, 0x40000000    # 2.0f

    .line 748
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 805
    :goto_1
    return v5

    .line 738
    :cond_0
    if-ltz p3, :cond_1

    .line 740
    move v1, p3

    .line 741
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 744
    :cond_1
    const/4 v1, 0x0

    .line 745
    const/4 v0, 0x0

    goto :goto_0

    .line 752
    :cond_2
    move v4, p1

    .line 753
    .local v4, "tempStart":I
    move v3, p2

    .line 757
    .local v3, "tempEnd":I
    if-ne v4, v6, :cond_3

    .line 758
    add-int v4, p6, p4

    .line 760
    :cond_3
    if-ne v3, v6, :cond_4

    .line 761
    sub-int v5, p8, p7

    sub-int v3, v5, p5

    .line 765
    :cond_4
    sub-int v2, v3, v4

    .line 767
    .local v2, "maxAvailable":I
    if-eq p1, v6, :cond_6

    if-eq p2, v6, :cond_6

    .line 769
    const/high16 v0, 0x40000000    # 2.0f

    .line 770
    move v1, v2

    .line 805
    :cond_5
    :goto_2
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1

    .line 772
    :cond_6
    if-ltz p3, :cond_8

    .line 774
    const/high16 v0, 0x40000000    # 2.0f

    .line 776
    if-ltz v2, :cond_7

    .line 778
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 781
    :cond_7
    move v1, p3

    goto :goto_2

    .line 783
    :cond_8
    const/4 v5, -0x1

    if-ne p3, v5, :cond_9

    .line 786
    const/high16 v0, 0x40000000    # 2.0f

    .line 787
    move v1, v2

    goto :goto_2

    .line 788
    :cond_9
    const/4 v5, -0x2

    if-ne p3, v5, :cond_5

    .line 792
    if-ltz v2, :cond_a

    .line 794
    const/high16 v0, -0x80000000

    .line 795
    move v1, v2

    goto :goto_2

    .line 799
    :cond_a
    const/4 v0, 0x0

    .line 800
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    const/4 v4, 0x0

    .line 996
    aget v0, p1, p2

    .line 997
    .local v0, "id":I
    if-eqz v0, :cond_3

    .line 998
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    # getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 999
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_1

    move-object v2, v4

    .line 1013
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    :goto_0
    return-object v2

    .line 1000
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1003
    .local v2, "v":Landroid/view/View;
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    .line 1004
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1005
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    # getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v5, p1, p2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1006
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 1007
    :cond_2
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_1

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    move-object v2, v4

    .line 1013
    goto :goto_0
.end method

.method private getRelatedViewBaselineOffset([I)I
    .locals 6
    .param p1, "rules"    # [I

    .prologue
    const/4 v4, -0x1

    .line 1028
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v3

    .line 1029
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1030
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1031
    .local v1, "baseline":I
    if-eq v1, v4, :cond_0

    .line 1032
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1033
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_0

    .line 1034
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1035
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v1

    .line 1039
    .end local v0    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "baseline":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return v4
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    .line 1017
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 1018
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1020
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1021
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1024
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 254
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 256
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 257
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 665
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 670
    .local v10, "childWidthMeasureSpec":I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 675
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 676
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 679
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 684
    .local v10, "childWidthMeasureSpec":I
    move/from16 v11, p4

    .line 685
    .local v11, "maxHeight":I
    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v1, p4, v1

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 690
    :cond_0
    if-gez p4, :cond_2

    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v0, :cond_2

    .line 691
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v0, :cond_1

    .line 692
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 705
    .local v9, "childHeightMeasureSpec":I
    :goto_0
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 706
    return-void

    .line 698
    .end local v9    # "childHeightMeasureSpec":I
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto :goto_0

    .line 700
    .end local v9    # "childHeightMeasureSpec":I
    :cond_2
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 701
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto :goto_0

    .line 703
    .end local v9    # "childHeightMeasureSpec":I
    :cond_3
    const/high16 v0, -0x80000000

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto :goto_0
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v2, 0x1

    const/high16 v4, -0x80000000

    .line 811
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 812
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 814
    .local v1, "rules":[I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 816
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 842
    :cond_0
    :goto_0
    const/16 v3, 0x15

    aget v3, v1, v3

    if-eqz v3, :cond_7

    :goto_1
    return v2

    .line 817
    :cond_1
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_2

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 819
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 820
    :cond_2
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_0

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 822
    const/16 v3, 0xd

    aget v3, v1, v3

    if-nez v3, :cond_3

    const/16 v3, 0xe

    aget v3, v1, v3

    if-eqz v3, :cond_5

    .line 823
    :cond_3
    if-nez p4, :cond_4

    .line 824
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 826
    :cond_4
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 827
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 833
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 834
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v3, p3, v3

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 835
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 837
    :cond_6
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 838
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto/16 :goto_0

    .line 842
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v1, 0x1

    const/high16 v3, -0x80000000

    .line 848
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 850
    .local v0, "rules":[I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 852
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 871
    :cond_0
    :goto_0
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 853
    :cond_1
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v3, :cond_2

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 855
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 856
    :cond_2
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_0

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 858
    const/16 v2, 0xd

    aget v2, v0, v2

    if-nez v2, :cond_3

    const/16 v2, 0xf

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 859
    :cond_3
    if-nez p4, :cond_4

    .line 860
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 862
    :cond_4
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 863
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 867
    :cond_5
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 868
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 871
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 263
    .local v0, "version":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 264
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 265
    return-void

    :cond_0
    move v1, v3

    .line 263
    goto :goto_0

    :cond_1
    move v2, v3

    .line 264
    goto :goto_1
.end method

.method private sortChildren()V
    .locals 5

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 365
    .local v0, "count":I
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_1

    .line 366
    :cond_0
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 369
    :cond_1
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_3

    .line 370
    :cond_2
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 373
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 374
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 376
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 377
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_4
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 381
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 382
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1092
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1102
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_0

    .line 1103
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1107
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1108
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1112
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1114
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1115
    const/4 v4, 0x1

    .line 1120
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return v4

    .line 1119
    :cond_3
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1120
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1086
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1097
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1076
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1126
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1127
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1131
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1132
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1133
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 1064
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1065
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1067
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1069
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1064
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1072
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    if-eqz v4, :cond_0

    .line 387
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 388
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 391
    :cond_0
    const/16 v30, -0x1

    .line 392
    .local v30, "myWidth":I
    const/16 v29, -0x1

    .line 394
    .local v29, "myHeight":I
    const/16 v42, 0x0

    .line 395
    .local v42, "width":I
    const/16 v19, 0x0

    .line 397
    .local v19, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 398
    .local v43, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 399
    .local v20, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    .line 400
    .local v44, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 403
    .local v21, "heightSize":I
    if-eqz v43, :cond_1

    .line 404
    move/from16 v30, v44

    .line 407
    :cond_1
    if-eqz v20, :cond_2

    .line 408
    move/from16 v29, v21

    .line 411
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-ne v0, v4, :cond_3

    .line 412
    move/from16 v42, v30

    .line 415
    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v0, v4, :cond_4

    .line 416
    move/from16 v19, v29

    .line 419
    :cond_4
    const/16 v25, 0x0

    .line 420
    .local v25, "ignore":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v5, 0x800007

    and-int v18, v4, v5

    .line 421
    .local v18, "gravity":I
    const v4, 0x800003

    move/from16 v0, v18

    if-eq v0, v4, :cond_9

    if-eqz v18, :cond_9

    const/16 v22, 0x1

    .line 422
    .local v22, "horizontalGravity":Z
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v18, v4, 0x70

    .line 423
    const/16 v4, 0x30

    move/from16 v0, v18

    if-eq v0, v4, :cond_a

    if-eqz v18, :cond_a

    const/16 v39, 0x1

    .line 425
    .local v39, "verticalGravity":Z
    :goto_1
    const v28, 0x7fffffff

    .line 426
    .local v28, "left":I
    const v38, 0x7fffffff

    .line 427
    .local v38, "top":I
    const/high16 v35, -0x80000000

    .line 428
    .local v35, "right":I
    const/high16 v12, -0x80000000

    .line 430
    .local v12, "bottom":I
    const/16 v31, 0x0

    .line 431
    .local v31, "offsetHorizontalAxis":Z
    const/16 v32, 0x0

    .line 433
    .local v32, "offsetVerticalAxis":Z
    if-nez v22, :cond_5

    if-eqz v39, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 434
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 437
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-eq v0, v4, :cond_b

    const/16 v27, 0x1

    .line 438
    .local v27, "isWrapContentWidth":Z
    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v0, v4, :cond_c

    const/16 v26, 0x1

    .line 445
    .local v26, "isWrapContentHeight":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v9

    .line 446
    .local v9, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_7

    .line 447
    const/high16 v30, 0x10000

    .line 450
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 451
    .local v41, "views":[Landroid/view/View;
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 453
    .local v17, "count":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 454
    aget-object v13, v41, v24

    .line 455
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    .line 456
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 457
    .local v34, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 459
    .local v36, "rules":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v27

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 463
    const/16 v31, 0x1

    .line 453
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 421
    .end local v9    # "layoutDirection":I
    .end local v12    # "bottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "count":I
    .end local v22    # "horizontalGravity":Z
    .end local v24    # "i":I
    .end local v26    # "isWrapContentHeight":Z
    .end local v27    # "isWrapContentWidth":Z
    .end local v28    # "left":I
    .end local v31    # "offsetHorizontalAxis":Z
    .end local v32    # "offsetVerticalAxis":Z
    .end local v35    # "right":I
    .end local v38    # "top":I
    .end local v39    # "verticalGravity":Z
    .end local v41    # "views":[Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 423
    .restart local v22    # "horizontalGravity":Z
    :cond_a
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 437
    .restart local v12    # "bottom":I
    .restart local v28    # "left":I
    .restart local v31    # "offsetHorizontalAxis":Z
    .restart local v32    # "offsetVerticalAxis":Z
    .restart local v35    # "right":I
    .restart local v38    # "top":I
    .restart local v39    # "verticalGravity":Z
    :cond_b
    const/16 v27, 0x0

    goto :goto_2

    .line 438
    .restart local v27    # "isWrapContentWidth":Z
    :cond_c
    const/16 v26, 0x0

    goto :goto_3

    .line 468
    .restart local v9    # "layoutDirection":I
    .restart local v17    # "count":I
    .restart local v24    # "i":I
    .restart local v26    # "isWrapContentHeight":Z
    .restart local v41    # "views":[Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 469
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v37, v0

    .line 472
    .local v37, "targetSdkVersion":I
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_19

    .line 473
    aget-object v13, v41, v24

    .line 474
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 475
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 477
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 480
    const/16 v32, 0x1

    .line 483
    :cond_e
    if-eqz v27, :cond_f

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 485
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_15

    .line 486
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 499
    :cond_f
    :goto_6
    if-eqz v26, :cond_10

    .line 500
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_18

    .line 501
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 507
    :cond_10
    :goto_7
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_11

    if-eqz v39, :cond_12

    .line 508
    :cond_11
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 509
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v38

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 512
    :cond_12
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_13

    if-eqz v22, :cond_14

    .line 513
    :cond_13
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 514
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 472
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 488
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_15
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_6

    .line 491
    :cond_16
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_17

    .line 492
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_6

    .line 494
    :cond_17
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto/16 :goto_6

    .line 503
    :cond_18
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_7

    .line 521
    .end local v13    # "child":Landroid/view/View;
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_19
    const/4 v11, 0x0

    .line 522
    .local v11, "baselineView":Landroid/view/View;
    const/4 v10, 0x0

    .line 523
    .local v10, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x0

    :goto_8
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    .line 524
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 525
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1b

    .line 526
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 527
    .local v15, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v11, :cond_1a

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-gez v4, :cond_1b

    .line 529
    :cond_1a
    move-object v11, v13

    .line 530
    move-object v10, v15

    .line 523
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 534
    .end local v13    # "child":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 536
    if-eqz v27, :cond_21

    .line 539
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int v42, v42, v4

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1d

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 545
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 546
    move/from16 v0, v42

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v42

    .line 548
    if-eqz v31, :cond_21

    .line 549
    const/16 v24, 0x0

    :goto_9
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_21

    .line 550
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 551
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1f

    .line 552
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 553
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 554
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_1e

    const/16 v4, 0xe

    aget v4, v36, v4

    if-eqz v4, :cond_20

    .line 555
    :cond_1e
    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 549
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_1f
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 556
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_20
    const/16 v4, 0xb

    aget v4, v36, v4

    if-eqz v4, :cond_1f

    .line 557
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 558
    .local v16, "childWidth":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v4, v42, v4

    sub-int v4, v4, v16

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 559
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v16

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_a

    .line 566
    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "childWidth":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_21
    if-eqz v26, :cond_26

    .line 569
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int v19, v19, v4

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_22

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 575
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 576
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v19

    .line 578
    if-eqz v32, :cond_26

    .line 579
    const/16 v24, 0x0

    :goto_b
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_26

    .line 580
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 581
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_24

    .line 582
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 583
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 584
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_23

    const/16 v4, 0xf

    aget v4, v36, v4

    if-eqz v4, :cond_25

    .line 585
    :cond_23
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 579
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_24
    :goto_c
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 586
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_25
    const/16 v4, 0xc

    aget v4, v36, v4

    if-eqz v4, :cond_24

    .line 587
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 588
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v4, v19, v4

    sub-int/2addr v4, v14

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 589
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_c

    .line 596
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "childHeight":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_26
    if-nez v22, :cond_27

    if-eqz v39, :cond_2b

    .line 597
    :cond_27
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 598
    .local v7, "selfBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v6, v42, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move/from16 v45, v0

    sub-int v45, v19, v45

    move/from16 v0, v45

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 601
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 602
    .local v8, "contentBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v5, v35, v28

    sub-int v6, v12, v38

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 605
    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v23, v4, v28

    .line 606
    .local v23, "horizontalOffset":I
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v40, v4, v38

    .line 607
    .local v40, "verticalOffset":I
    if-nez v23, :cond_28

    if-eqz v40, :cond_2b

    .line 608
    :cond_28
    const/16 v24, 0x0

    :goto_d
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2b

    .line 609
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 610
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2a

    move-object/from16 v0, v25

    if-eq v13, v0, :cond_2a

    .line 611
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 612
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v22, :cond_29

    .line 613
    move-object/from16 v0, v34

    move/from16 v1, v23

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 614
    move-object/from16 v0, v34

    move/from16 v1, v23

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 616
    :cond_29
    if-eqz v39, :cond_2a

    .line 617
    move-object/from16 v0, v34

    move/from16 v1, v40

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 618
    move-object/from16 v0, v34

    move/from16 v1, v40

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 608
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2a
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 625
    .end local v7    # "selfBounds":Landroid/graphics/Rect;
    .end local v8    # "contentBounds":Landroid/graphics/Rect;
    .end local v13    # "child":Landroid/view/View;
    .end local v23    # "horizontalOffset":I
    .end local v40    # "verticalOffset":I
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 626
    sub-int v33, v30, v42

    .line 627
    .local v33, "offsetWidth":I
    const/16 v24, 0x0

    :goto_e
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2d

    .line 628
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 629
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2c

    .line 630
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 631
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    move/from16 v1, v33

    # -= operator for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 632
    move-object/from16 v0, v34

    move/from16 v1, v33

    # -= operator for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 627
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2c
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 637
    .end local v13    # "child":Landroid/view/View;
    .end local v33    # "offsetWidth":I
    :cond_2d
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 638
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 361
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 320
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 321
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 322
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 325
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 326
    or-int/lit8 p1, p1, 0x30

    .line 329
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 330
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 332
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 336
    and-int v0, p1, v2

    .line 337
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 338
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 339
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 341
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 285
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 286
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 345
    and-int/lit8 v0, p1, 0x70

    .line 346
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 347
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 348
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 350
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

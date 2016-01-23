.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$BlinkLayout;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$Filter;
    }
.end annotation


# static fields
.field private static final ATTRS_THEME:[I

.field private static final ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field static final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

.field private mTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 105
    new-array v0, v3, [I

    const/high16 v1, 0x1010000

    aput v1, v0, v2

    sput-object v0, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 202
    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 203
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 214
    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 215
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 216
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 217
    iget-object v0, p1, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 218
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 219
    return-void
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 653
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 227
    .local v0, "LayoutInflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_0

    .line 228
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 230
    :cond_0
    return-object v0
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "inheritContext"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    .line 865
    if-eqz p4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 868
    .local v11, "context":Landroid/content/Context;
    :goto_0
    sget-object v3, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 869
    .local v19, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    .line 870
    .local v20, "themeResId":I
    if-eqz v20, :cond_0

    .line 871
    new-instance v12, Landroid/view/ContextThemeWrapper;

    move/from16 v0, v20

    invoke-direct {v12, v11, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v11    # "context":Landroid/content/Context;
    .local v12, "context":Landroid/content/Context;
    move-object v11, v12

    .line 873
    .end local v12    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 877
    const/4 v3, 0x0

    const-string v7, "layout"

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 878
    .local v17, "layout":I
    if-nez v17, :cond_4

    .line 879
    const/4 v3, 0x0

    const-string v7, "layout"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 880
    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x1

    if-ge v3, v7, :cond_3

    .line 881
    :cond_1
    new-instance v3, Landroid/view/InflateException;

    const-string v7, "You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 865
    .end local v17    # "layout":I
    .end local v19    # "ta":Landroid/content/res/TypedArray;
    .end local v20    # "themeResId":I
    .end local v22    # "value":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 885
    .restart local v17    # "layout":I
    .restart local v19    # "ta":Landroid/content/res/TypedArray;
    .restart local v20    # "themeResId":I
    .restart local v22    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 889
    .end local v22    # "value":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    if-nez v3, :cond_5

    .line 890
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    .line 892
    :cond_5
    if-eqz v17, :cond_6

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    const/4 v8, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    .line 896
    :cond_6
    if-nez v17, :cond_7

    .line 897
    const/4 v3, 0x0

    const-string v7, "layout"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 898
    .restart local v22    # "value":Ljava/lang/String;
    new-instance v3, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You must specify a valid layout reference. The layout ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not valid."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    .end local v22    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 905
    .local v4, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 907
    .local v6, "childAttrs":Landroid/util/AttributeSet;
    :cond_8
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_9

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_8

    .line 912
    :cond_9
    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_a

    .line 913
    new-instance v3, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": No start tag found!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v21    # "type":I
    :catchall_0
    move-exception v3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 917
    .restart local v6    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v21    # "type":I
    :cond_a
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 919
    .local v10, "childName":Ljava/lang/String;
    const-string/jumbo v3, "merge"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 921
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 983
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 985
    .local v13, "currentDepth":I
    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v13, :cond_d

    :cond_c
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_b

    .line 988
    :cond_d
    return-void

    .line 923
    .end local v13    # "currentDepth":I
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v0, v1, v10, v6, v2}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v5

    .line 925
    .local v5, "view":Landroid/view/View;
    move-object/from16 v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v15, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    .local v15, "group":Landroid/view/ViewGroup;
    const/16 v18, 0x0

    .line 937
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v18

    .line 941
    if-eqz v18, :cond_f

    .line 942
    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    :cond_f
    :goto_2
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V

    .line 949
    sget-object v3, Lcom/android/internal/R$styleable;->Include:[I

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 951
    .local v9, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v7, -0x1

    invoke-virtual {v9, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 953
    .local v16, "id":I
    const/4 v3, 0x1

    const/4 v7, -0x1

    invoke-virtual {v9, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 955
    .local v23, "visibility":I
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 957
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_10

    .line 958
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setId(I)V

    .line 961
    :cond_10
    packed-switch v23, :pswitch_data_0

    .line 973
    :goto_3
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 938
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v16    # "id":I
    .end local v23    # "visibility":I
    :catch_0
    move-exception v14

    .line 939
    .local v14, "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v18

    .line 941
    if-eqz v18, :cond_f

    .line 942
    :try_start_6
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 941
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    if-eqz v18, :cond_11

    .line 942
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    throw v3

    .line 963
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    .restart local v16    # "id":I
    .restart local v23    # "visibility":I
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 966
    :pswitch_1
    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 969
    :pswitch_2
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 980
    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "childName":Ljava/lang/String;
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "id":I
    .end local v17    # "layout":I
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "ta":Landroid/content/res/TypedArray;
    .end local v20    # "themeResId":I
    .end local v21    # "type":I
    .end local v23    # "visibility":I
    :cond_12
    new-instance v3, Landroid/view/InflateException;

    const-string v7, "<include /> can only be used inside of a ViewGroup"

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 831
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 833
    .local v0, "currentDepth":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 836
    :cond_2
    return-void
.end method

.method private parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 846
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->ViewTag:[I

    invoke-virtual {v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 848
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 849
    .local v1, "key":I
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 850
    .local v4, "value":Ljava/lang/CharSequence;
    invoke-virtual {p2, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 851
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 853
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 855
    .local v0, "currentDepth":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_2

    :cond_1
    if-ne v3, v8, :cond_0

    .line 858
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 569
    sget-object v11, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 570
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 573
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-wide/16 v12, 0x8

    :try_start_0
    invoke-static {v12, v13, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 575
    if-nez v6, :cond_4

    .line 577
    iget-object v11, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eqz p2, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    invoke-virtual {v12, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 580
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v11, :cond_0

    if-eqz v5, :cond_0

    .line 581
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v11, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v2

    .line 582
    .local v2, "allowed":Z
    if-nez v2, :cond_0

    .line 583
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 586
    .end local v2    # "allowed":Z
    :cond_0
    sget-object v11, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 587
    sget-object v11, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 610
    .local v4, "args":[Ljava/lang/Object;
    const/4 v11, 0x1

    aput-object p3, v4, v11

    .line 612
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 613
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 614
    .local v9, "view":Landroid/view/View;
    instance-of v11, v9, Landroid/view/ViewStub;

    if-eqz v11, :cond_2

    .line 616
    move-object v0, v9

    check-cast v0, Landroid/view/ViewStub;

    move-object v10, v0

    .line 617
    .local v10, "viewStub":Landroid/view/ViewStub;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    check-cast v11, Landroid/content/Context;

    invoke-virtual {p0, v11}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v10    # "viewStub":Landroid/view/ViewStub;
    :cond_2
    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v9

    .end local v4    # "args":[Ljava/lang/Object;
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    move-object v11, p1

    .line 577
    goto :goto_0

    .line 590
    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v11, :cond_1

    .line 592
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 593
    .local v3, "allowedState":Ljava/lang/Boolean;
    if-nez v3, :cond_8

    .line 595
    iget-object v11, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eqz p2, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 598
    if-eqz v5, :cond_7

    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v11, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v2, 0x1

    .line 599
    .restart local v2    # "allowed":Z
    :goto_3
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    if-nez v2, :cond_1

    .line 601
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 621
    .end local v2    # "allowed":Z
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    :catch_0
    move-exception v7

    .line 622
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Error inflating class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 625
    .local v8, "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 626
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v8    # "ie":Landroid/view/InflateException;
    :catchall_0
    move-exception v11

    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v11

    .restart local v3    # "allowedState":Ljava/lang/Boolean;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_6
    move-object v11, p1

    .line 595
    goto :goto_2

    .line 598
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 603
    :cond_8
    :try_start_3
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 604
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 628
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    :catch_1
    move-exception v7

    .line 630
    .local v7, "e":Ljava/lang/ClassCastException;
    :try_start_4
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Class is not a View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_9
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 633
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 634
    throw v8

    .line 635
    .end local v7    # "e":Ljava/lang/ClassCastException;
    .end local v8    # "ie":Landroid/view/InflateException;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 637
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    throw v7

    .line 638
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v7

    .line 639
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Error inflating class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v5, :cond_a

    const-string v11, "<unknown>"

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 643
    throw v8

    .line 639
    .end local v8    # "ie":Landroid/view/InflateException;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    goto :goto_4
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "inheritContext"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 702
    const-string/jumbo v8, "view"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 703
    const-string v8, "class"

    invoke-interface {p3, v10, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 707
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 714
    .local v6, "viewContext":Landroid/content/Context;
    :goto_0
    sget-object v8, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 715
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 716
    .local v4, "themeResId":I
    if-eqz v4, :cond_1

    .line 717
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-direct {v7, v6, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v6    # "viewContext":Landroid/content/Context;
    .local v7, "viewContext":Landroid/content/Context;
    move-object v6, v7

    .line 719
    .end local v7    # "viewContext":Landroid/content/Context;
    .restart local v6    # "viewContext":Landroid/content/Context;
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    const-string v8, "blink"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 723
    new-instance v5, Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {v5, v6, p3}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 757
    :cond_2
    :goto_1
    return-object v5

    .line 710
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    .end local v4    # "themeResId":I
    .end local v6    # "viewContext":Landroid/content/Context;
    :cond_3
    iget-object v6, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .restart local v6    # "viewContext":Landroid/content/Context;
    goto :goto_0

    .line 730
    .restart local v3    # "ta":Landroid/content/res/TypedArray;
    .restart local v4    # "themeResId":I
    :cond_4
    :try_start_0
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v8, :cond_6

    .line 731
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v8, p1, p2, v6, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 738
    .local v5, "view":Landroid/view/View;
    :goto_2
    if-nez v5, :cond_5

    iget-object v8, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-eqz v8, :cond_5

    .line 739
    iget-object v8, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v8, p1, p2, v6, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 742
    :cond_5
    if-nez v5, :cond_2

    .line 743
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v2, v8, v9

    .line 744
    .local v2, "lastContext":Ljava/lang/Object;
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 746
    const/4 v8, -0x1

    const/16 v9, 0x2e

    :try_start_1
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 747
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 752
    :goto_3
    :try_start_2
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9
    :try_end_2
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 759
    .end local v2    # "lastContext":Ljava/lang/Object;
    .end local v5    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/view/InflateException;
    throw v0

    .line 732
    .end local v0    # "e":Landroid/view/InflateException;
    :cond_6
    :try_start_3
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v8, :cond_7

    .line 733
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v8, p2, v6, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_2

    .line 735
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_2

    .line 749
    .restart local v2    # "lastContext":Ljava/lang/Object;
    :cond_8
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {p0, p2, v8, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    goto :goto_3

    .line 752
    :catchall_0
    move-exception v8

    :try_start_5
    iget-object v9, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    throw v8
    :try_end_5
    .catch Landroid/view/InflateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 762
    .end local v2    # "lastContext":Ljava/lang/Object;
    .end local v5    # "view":Landroid/view/View;
    :catch_1
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error inflating class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 766
    throw v1

    .line 768
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error inflating class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 771
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 772
    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public final getFactory2()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 371
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 418
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 420
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 422
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 391
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v15

    .line 450
    const-wide/16 v2, 0x8

    :try_start_0
    const-string v6, "inflate"

    invoke-static {v2, v3, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 452
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 453
    .local v5, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v10, v2, v3

    check-cast v10, Landroid/content/Context;

    .line 454
    .local v10, "lastContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    aput-object v6, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 455
    move-object/from16 v13, p2

    .line 460
    .local v13, "result":Landroid/view/View;
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v2, 0x2

    if-eq v14, v2, :cond_1

    const/4 v2, 0x1

    if-ne v14, v2, :cond_0

    .line 465
    :cond_1
    const/4 v2, 0x2

    if-eq v14, v2, :cond_2

    .line 466
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": No start tag found!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .end local v14    # "type":I
    :catch_0
    move-exception v8

    .line 529
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v9, Landroid/view/InflateException;

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 530
    .local v9, "ex":Landroid/view/InflateException;
    invoke-virtual {v9, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 531
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "ex":Landroid/view/InflateException;
    :catchall_0
    move-exception v2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    .line 541
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v3, v6

    throw v2

    .line 547
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "lastContext":Landroid/content/Context;
    .end local v13    # "result":Landroid/view/View;
    :catchall_1
    move-exception v2

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 470
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "lastContext":Landroid/content/Context;
    .restart local v13    # "result":Landroid/view/View;
    .restart local v14    # "type":I
    :cond_2
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 479
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v2, "merge"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 480
    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    .line 481
    :cond_3
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 532
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_1
    move-exception v8

    .line 533
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v9    # "ex":Landroid/view/InflateException;
    invoke-virtual {v9, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 537
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "ex":Landroid/view/InflateException;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_6
    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 540
    :cond_5
    :goto_0
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v6, 0x0

    aput-object v6, v2, v3

    .line 544
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 546
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object v13

    .line 488
    :cond_6
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11, v5, v2}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v4

    .line 490
    .local v4, "temp":Landroid/view/View;
    const/4 v12, 0x0

    .line 492
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_7

    .line 498
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 499
    if-nez p3, :cond_7

    .line 502
    invoke-virtual {v4, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    :cond_7
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V

    .line 517
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 518
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 523
    :cond_8
    if-eqz p2, :cond_9

    if-nez p3, :cond_5

    .line 524
    :cond_9
    move-object v13, v4

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 671
    const-string v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "finishInflate"    # Z
    .param p5, "inheritContext"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 792
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v1, 0x3

    if-ne v10, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v7, :cond_7

    :cond_1
    const/4 v1, 0x1

    if-eq v10, v1, :cond_7

    .line 794
    const/4 v1, 0x2

    if-ne v10, v1, :cond_0

    .line 798
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 800
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v1, "requestFocus"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;->parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V

    goto :goto_0

    .line 802
    :cond_2
    const-string/jumbo v1, "tag"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 803
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 804
    :cond_3
    const-string v1, "include"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 805
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-nez v1, :cond_4

    .line 806
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<include /> cannot be the root element"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    :cond_4
    move/from16 v0, p5

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    goto :goto_0

    .line 809
    :cond_5
    const-string/jumbo v1, "merge"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 810
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<merge /> must be the root element"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_6
    move/from16 v0, p5

    invoke-virtual {p0, p2, v8, p3, v0}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    move-object v11, p2

    .line 813
    check-cast v11, Landroid/view/ViewGroup;

    .line 814
    .local v11, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v11, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 815
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V

    .line 816
    invoke-virtual {v11, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 820
    .end local v3    # "view":Landroid/view/View;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "viewGroup":Landroid/view/ViewGroup;
    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    .line 821
    :cond_8
    return-void
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 4
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 291
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 298
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_2

    .line 299
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_2
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v3, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 310
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    if-nez p1, :cond_1

    .line 314
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 317
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_2

    .line 318
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_2
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_0
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .prologue
    .line 353
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 354
    if-eqz p1, :cond_0

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 357
    :cond_0
    return-void
.end method

.method public setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_0

    .line 329
    iput-object p1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    goto :goto_0
.end method

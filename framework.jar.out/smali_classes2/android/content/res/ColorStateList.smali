.class public Landroid/content/res/ColorStateList;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 601
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 144
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 145
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 148
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 150
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/ColorStateList;
    .param p2, "x1"    # Landroid/content/res/ColorStateList$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 0
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 96
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 98
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ColorStateList;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 71
    iget v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return v0
.end method

.method public static addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p1, "state"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 483
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    .line 484
    .local v3, "inputStates":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 485
    aget-object v2, v3, v0

    .line 486
    .local v2, "inputState":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_1

    .line 487
    aget v7, v2, v4

    if-ne v7, p1, :cond_0

    .line 502
    .end local v2    # "inputState":[I
    .end local v4    # "j":I
    .end local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    :goto_2
    return-object p0

    .line 486
    .restart local v2    # "inputState":[I
    .restart local v4    # "j":I
    .restart local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 484
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "inputState":[I
    .end local v4    # "j":I
    :cond_2
    array-length v7, v3

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [[I

    .line 494
    .local v6, "outputStates":[[I
    array-length v7, v3

    invoke-static {v3, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    new-array v7, v9, [I

    aput p1, v7, v8

    aput-object v7, v6, v8

    .line 497
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 498
    .local v1, "inputColors":[I
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 499
    .local v5, "outputColors":[I
    array-length v7, v1

    invoke-static {v1, v8, v5, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 500
    aput p2, v5, v8

    .line 502
    new-instance p0, Landroid/content/res/ColorStateList;

    .end local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {p0, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_2
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 181
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 185
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 189
    :cond_1
    if-eq v1, v3, :cond_2

    .line 190
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid color state list tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 214
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 215
    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 29
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
    .line 242
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v26

    add-int/lit8 v15, v26, 0x1

    .line 246
    .local v15, "innerDepth":I
    const/4 v8, 0x0

    .line 247
    .local v8, "changingConfigurations":I
    const/high16 v11, -0x10000

    .line 249
    .local v11, "defaultColor":I
    const/4 v13, 0x0

    .line 251
    .local v13, "hasUnresolvedAttrs":Z
    const-class v26, [I

    const/16 v27, 0x14

    invoke-static/range {v26 .. v27}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[I

    .line 252
    .local v22, "stateSpecList":[[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [[I

    move-object/from16 v24, v0

    .line 253
    .local v24, "themeAttrsList":[[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [I

    .line 254
    .local v10, "colorList":[I
    const/16 v18, 0x0

    .line 257
    .local v18, "listSize":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .local v25, "type":I
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .local v12, "depth":I
    if-ge v12, v15, :cond_1

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 258
    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    if-gt v12, v15, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    const-string v27, "item"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 263
    sget-object v26, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 265
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v23

    .line 266
    .local v23, "themeAttrs":[I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 267
    .local v7, "baseColor":I
    const/16 v26, 0x1

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 269
    .local v6, "alphaMod":F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v26

    or-int v8, v8, v26

    .line 271
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    const/16 v16, 0x0

    .line 275
    .local v16, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v19

    .line 276
    .local v19, "numAttrs":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 277
    .local v21, "stateSpec":[I
    const/4 v14, 0x0

    .local v14, "i":I
    move/from16 v17, v16

    .end local v16    # "j":I
    .local v17, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    .line 278
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v20

    .line 279
    .local v20, "stateResId":I
    sparse-switch v20, :sswitch_data_0

    .line 285
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "j":I
    .restart local v16    # "j":I
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v26

    if-eqz v26, :cond_2

    .end local v20    # "stateResId":I
    :goto_2
    aput v20, v21, v17

    .line 277
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v16

    .end local v16    # "j":I
    .restart local v17    # "j":I
    goto :goto_1

    .restart local v20    # "stateResId":I
    :sswitch_0
    move/from16 v16, v17

    .line 283
    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_3

    .line 285
    :cond_2
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    goto :goto_2

    .line 289
    .end local v16    # "j":I
    .end local v20    # "stateResId":I
    .restart local v17    # "j":I
    :cond_3
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v21

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v9

    .line 293
    .local v9, "color":I
    if-eqz v18, :cond_4

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 294
    :cond_4
    move v11, v9

    .line 297
    :cond_5
    if-eqz v23, :cond_6

    .line 298
    const/4 v13, 0x1

    .line 301
    :cond_6
    move/from16 v0, v18

    invoke-static {v10, v0, v9}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v10

    .line 302
    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "themeAttrsList":[[I
    check-cast v24, [[I

    .line 303
    .restart local v24    # "themeAttrsList":[[I
    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "stateSpecList":[[I
    check-cast v22, [[I

    .line 304
    .restart local v22    # "stateSpecList":[[I
    add-int/lit8 v18, v18, 0x1

    .line 305
    goto/16 :goto_0

    .line 307
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "alphaMod":F
    .end local v7    # "baseColor":I
    .end local v9    # "color":I
    .end local v12    # "depth":I
    .end local v14    # "i":I
    .end local v17    # "j":I
    .end local v19    # "numAttrs":I
    .end local v21    # "stateSpec":[I
    .end local v23    # "themeAttrs":[I
    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 308
    move-object/from16 v0, p0

    iput v11, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 310
    if-eqz v13, :cond_8

    .line 311
    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 312
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :goto_4
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    .line 318
    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 319
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-static {v10, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 320
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 323
    return-void

    .line 314
    :cond_8
    const/16 v26, 0x0

    check-cast v26, [[I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    goto :goto_4

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x10101a5 -> :sswitch_0
        0x101031f -> :sswitch_0
    .end sparse-switch
.end method

.method private modulateColorAlpha(IF)I
    .locals 6
    .param p1, "baseColor"    # I
    .param p2, "alphaMod"    # F

    .prologue
    .line 379
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    .line 386
    .end local p1    # "baseColor":I
    :goto_0
    return p1

    .line 383
    .restart local p1    # "baseColor":I
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 384
    .local v1, "baseAlpha":I
    int-to-float v3, v1

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 385
    .local v0, "alpha":I
    const v3, 0xffffff

    and-int/2addr v3, p1

    shl-int/lit8 v4, v0, 0x18

    or-int v2, v3, v4

    .local v2, "color":I
    move p1, v2

    .line 386
    goto :goto_0
.end method

.method private onColorsChanged()V
    .locals 8

    .prologue
    .line 519
    const/high16 v2, -0x10000

    .line 520
    .local v2, "defaultColor":I
    const/4 v4, 0x1

    .line 522
    .local v4, "isOpaque":Z
    iget-object v5, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 523
    .local v5, "states":[[I
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 524
    .local v1, "colors":[I
    array-length v0, v5

    .line 525
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 526
    const/4 v6, 0x0

    aget v2, v1, v6

    .line 528
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 529
    aget-object v6, v5, v3

    array-length v6, v6

    if-nez v6, :cond_2

    .line 530
    aget v2, v1, v3

    .line 535
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 536
    aget v6, v1, v3

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_3

    .line 537
    const/4 v4, 0x0

    .line 543
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 544
    iput-boolean v4, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 545
    return-void

    .line 528
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 535
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "color"    # I

    .prologue
    .line 106
    sget-object v6, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v6

    .line 107
    :try_start_0
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 108
    .local v4, "index":I
    if-ltz v4, :cond_1

    .line 109
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 110
    .local v1, "cached":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 111
    monitor-exit v6

    .line 128
    .end local v1    # "cached":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1

    .line 115
    .restart local v1    # "cached":Landroid/content/res/ColorStateList;
    :cond_0
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 119
    .end local v1    # "cached":Landroid/content/res/ColorStateList;
    :cond_1
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 120
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 121
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 122
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 120
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 126
    :cond_3
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v5, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p0, v7, v8

    invoke-direct {v2, v5, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 127
    .local v2, "csl":Landroid/content/res/ColorStateList;
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    monitor-exit v6

    move-object v1, v2

    goto :goto_0

    .line 129
    .end local v0    # "N":I
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    .end local v3    # "i":I
    .end local v4    # "index":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 342
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v7, :cond_0

    .line 376
    :goto_0
    return-void

    .line 346
    :cond_0
    const/4 v4, 0x0

    .line 348
    .local v4, "hasUnresolvedAttrs":Z
    iget-object v6, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 349
    .local v6, "themeAttrsList":[[I
    array-length v0, v6

    .line 350
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 351
    aget-object v7, v6, v5

    if-eqz v7, :cond_2

    .line 352
    aget-object v7, v6, v5

    sget-object v8, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 354
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v8, v8, v5

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 356
    .local v3, "baseColor":I
    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 359
    .local v2, "alphaMod":F
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v3, v2}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v8

    aput v8, v7, v5

    .line 360
    iget v7, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 362
    aget-object v7, v6, v5

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v7

    aput-object v7, v6, v5

    .line 363
    aget-object v7, v6, v5

    if-eqz v7, :cond_1

    .line 364
    const/4 v4, 0x1

    .line 367
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "alphaMod":F
    .end local v3    # "baseColor":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 371
    :cond_3
    if-nez v4, :cond_4

    .line 372
    const/4 v7, 0x0

    check-cast v7, [[I

    iput-object v7, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 375
    :cond_4
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public getColorForState([II)I
    .locals 4
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    .prologue
    .line 424
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    .line 425
    .local v1, "setLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 426
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    .line 427
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget p2, v3, v0

    .line 431
    .end local v2    # "stateSpec":[I
    .end local p2    # "defaultColor":I
    :cond_0
    return p2

    .line 425
    .restart local v2    # "stateSpec":[I
    .restart local p2    # "defaultColor":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method getFactory()Landroid/content/res/ColorStateList$ColorStateListFactory;
    .locals 1

    .prologue
    .line 551
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method public getStates()[[I
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 398
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 227
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    .line 228
    .local v0, "colors":[I
    array-length v2, v0

    .line 229
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 230
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    const-string v2, "ColorStateList"

    const-string v3, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    .line 594
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 596
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_1
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 599
    return-void
.end method

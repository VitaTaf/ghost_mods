.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1377
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1362
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1363
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1365
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1366
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1368
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1369
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1370
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1371
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1373
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1374
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1375
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1379
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1382
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1362
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1363
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1365
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1366
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1368
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1369
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1370
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1371
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1373
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1374
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1375
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1383
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1385
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1386
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1387
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1388
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1389
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    .line 1390
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1391
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1392
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1393
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1395
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1396
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1397
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1398
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 1401
    packed-switch p1, :pswitch_data_0

    .line 1409
    .end local p2    # "defValue":Landroid/graphics/Paint$Cap;
    :goto_0
    return-object p2

    .line 1403
    .restart local p2    # "defValue":Landroid/graphics/Paint$Cap;
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1405
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1407
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    .prologue
    .line 1414
    packed-switch p1, :pswitch_data_0

    .line 1422
    .end local p2    # "defValue":Landroid/graphics/Paint$Join;
    :goto_0
    return-object p2

    .line 1416
    .restart local p2    # "defValue":Landroid/graphics/Paint$Join;
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1418
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1420
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v4, -0x1

    .line 1440
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 1443
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1445
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1447
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 1450
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1452
    invoke-static {v0}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1455
    :cond_1
    const/4 v2, 0x1

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1457
    const/16 v2, 0xc

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1459
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1461
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1463
    const/16 v2, 0xa

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1465
    const/4 v2, 0x3

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1467
    const/16 v2, 0xb

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1469
    const/4 v2, 0x4

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1471
    const/4 v2, 0x6

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1473
    const/4 v2, 0x7

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1475
    const/4 v2, 0x5

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1477
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1481
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-nez v1, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1485
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1486
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1487
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 1

    .prologue
    .line 1533
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1513
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .prologue
    .line 1493
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 1503
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .prologue
    .line 1553
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .prologue
    .line 1543
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1432
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1434
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1435
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1436
    return-void
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .prologue
    .line 1538
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1539
    return-void
.end method

.method setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 1528
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1529
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .prologue
    .line 1518
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1519
    return-void
.end method

.method setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 1498
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1499
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1508
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1509
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .prologue
    .line 1558
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1559
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .prologue
    .line 1568
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1569
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .prologue
    .line 1548
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1549
    return-void
.end method

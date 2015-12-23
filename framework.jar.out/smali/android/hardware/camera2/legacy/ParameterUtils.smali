.class public Landroid/hardware/camera2/legacy/ParameterUtils;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;,
        Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;,
        Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    }
.end annotation


# static fields
.field public static final CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

.field public static final NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

.field public static final NORMALIZED_RECTANGLE_MAX:I = 0x3e8

.field public static final NORMALIZED_RECTANGLE_MIN:I = -0x3e8

.field private static final PREVIEW_ASPECT_RATIO_TOLERANCE:F = 0.01f

.field public static final RECTANGLE_EMPTY:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "ParameterUtils"

.field private static final VERBOSE:Z

.field private static final ZOOM_RATIO_MULTIPLIER:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    const/4 v3, 0x0

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    .line 233
    const-string v0, "ParameterUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/ParameterUtils;->VERBOSE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static containsSize(Ljava/util/List;II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v2, "sizeList must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 280
    .local v1, "s":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, p2, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, p1, :cond_0

    .line 281
    const/4 v2, 0x1

    .line 284
    .end local v1    # "s":Landroid/hardware/Camera$Size;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    .locals 1
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "area"    # Landroid/hardware/Camera$Area;

    .prologue
    .line 903
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v0

    return-object v0
.end method

.method private static convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    .locals 12
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "area"    # Landroid/hardware/Camera$Area;
    .param p3, "usePreviewCrop"    # Z

    .prologue
    const/high16 v11, 0x44fa0000    # 2000.0f

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 966
    iget-object v1, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    .line 967
    .local v1, "previewCrop":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    .line 969
    .local v2, "reportedCrop":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    div-float v5, v8, v11

    .line 971
    .local v5, "scaleW":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    div-float v4, v8, v11

    .line 978
    .local v4, "scaleH":F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 981
    .local v6, "transform":Landroid/graphics/Matrix;
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 984
    invoke-virtual {v6, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 987
    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 989
    if-eqz p3, :cond_2

    move-object v0, v1

    .line 992
    .local v0, "cropToIntersectAgainst":Landroid/graphics/Rect;
    :goto_0
    iget-object v8, p2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v6, v8}, Landroid/hardware/camera2/utils/ParamsUtils;->mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 995
    .local v3, "reportedMetering":Landroid/graphics/Rect;
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 996
    sget-object v8, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 999
    :cond_0
    iget v7, p2, Landroid/hardware/Camera$Area;->weight:I

    .line 1000
    .local v7, "weight":I
    if-gez v7, :cond_1

    .line 1001
    const-string v8, "ParameterUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertCameraAreaToMeteringRectangle - rectangle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has too small weight, clip to 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v7, 0x0

    .line 1007
    :cond_1
    new-instance v8, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    iget v9, p2, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct {v8, v3, v9}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object v8

    .end local v0    # "cropToIntersectAgainst":Landroid/graphics/Rect;
    .end local v3    # "reportedMetering":Landroid/graphics/Rect;
    .end local v7    # "weight":I
    :cond_2
    move-object v0, v2

    .line 989
    goto :goto_0
.end method

.method private static convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 8
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "usePreviewCrop"    # Z

    .prologue
    .line 952
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 953
    .local v2, "pointedRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/hardware/Camera$Area;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 955
    .local v1, "pointedArea":Landroid/hardware/Camera$Area;
    invoke-static {p0, p1, v1, p3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v0

    .line 959
    .local v0, "adjustedRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, v0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 961
    .local v3, "transformedPoint":Landroid/graphics/Point;
    return-object v3
.end method

.method public static convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;
    .locals 9
    .param p0, "face"    # Landroid/hardware/Camera$Face;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x7d0

    .line 922
    const-string v6, "face must not be null"

    invoke-static {p0, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    new-instance v2, Landroid/hardware/Camera$Area;

    iget-object v6, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-direct {v2, v6, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 928
    .local v2, "fakeArea":Landroid/hardware/Camera$Area;
    invoke-static {p1, p2, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v1

    .line 931
    .local v1, "faceRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    iget-object v3, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .local v3, "leftEye":Landroid/graphics/Point;
    iget-object v5, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .local v5, "rightEye":Landroid/graphics/Point;
    iget-object v4, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 932
    .local v4, "mouth":Landroid/graphics/Point;
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_0

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-eq v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Point;->y:I

    if-eq v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-eq v6, v7, :cond_0

    .line 935
    invoke-static {p1, p2, v3, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v3

    .line 937
    invoke-static {p1, p2, v3, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v5

    .line 939
    invoke-static {p1, p2, v3, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v4

    .line 942
    iget v6, p0, Landroid/hardware/Camera$Face;->id:I

    invoke-virtual {v1, v6, v3, v5, v4}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toFace(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face;

    move-result-object v0

    .line 947
    .local v0, "api2Face":Landroid/hardware/camera2/params/Face;
    :goto_0
    return-object v0

    .line 944
    .end local v0    # "api2Face":Landroid/hardware/camera2/params/Face;
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toFace()Landroid/hardware/camera2/params/Face;

    move-result-object v0

    .restart local v0    # "api2Face":Landroid/hardware/camera2/params/Face;
    goto :goto_0
.end method

.method public static convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    .locals 18
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "meteringRect"    # Landroid/hardware/camera2/params/MeteringRectangle;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    .prologue
    .line 810
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    .line 812
    .local v6, "previewCrop":Landroid/graphics/Rect;
    const/high16 v13, 0x44fa0000    # 2000.0f

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 814
    .local v11, "scaleW":F
    const/high16 v13, 0x44fa0000    # 2000.0f

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float v10, v13, v14

    .line 817
    .local v10, "scaleH":F
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 820
    .local v12, "transform":Landroid/graphics/Matrix;
    iget v13, v6, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    int-to-float v13, v13

    iget v14, v6, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 822
    invoke-virtual {v12, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 824
    const/high16 v13, -0x3b860000    # -1000.0f

    const/high16 v14, -0x3b860000    # -1000.0f

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/hardware/camera2/utils/ParamsUtils;->mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 836
    .local v5, "normalizedRegionUnbounded":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 839
    .local v4, "normalizedIntersected":Landroid/graphics/Rect;
    sget-object v13, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 840
    const-string v13, "ParameterUtils"

    const-string v14, "convertMeteringRectangleToLegacy - metering rectangle too small, no metering will be done"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget-object v13, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 844
    new-instance v2, Landroid/hardware/Camera$Area;

    sget-object v13, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-direct {v2, v13, v14}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 854
    .local v2, "meteringArea":Landroid/hardware/Camera$Area;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 855
    .local v7, "previewMetering":Landroid/graphics/Rect;
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 856
    sget-object v13, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 866
    :cond_0
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v13

    invoke-direct {v3, v5, v13}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 868
    .local v3, "normalizedAreaUnbounded":Landroid/hardware/Camera$Area;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3, v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v9

    .line 870
    .local v9, "reportedMeteringRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    iget-object v8, v9, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 873
    .local v8, "reportedMetering":Landroid/graphics/Rect;
    sget-boolean v13, Landroid/hardware/camera2/legacy/ParameterUtils;->VERBOSE:Z

    if-eqz v13, :cond_1

    .line 874
    const-string v13, "ParameterUtils"

    const-string v14, "convertMeteringRectangleToLegacy - activeArray = %s, meteringRect = %s, previewCrop = %s, meteringArea = %s, previewMetering = %s, reportedMetering = %s, normalizedRegionUnbounded = %s"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    const/16 v16, 0x2

    aput-object v6, v15, v16

    const/16 v16, 0x3

    invoke-static {v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v7, v15, v16

    const/16 v16, 0x5

    aput-object v8, v15, v16

    const/16 v16, 0x6

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1
    new-instance v13, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    invoke-direct {v13, v2, v7, v8}, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;-><init>(Landroid/hardware/Camera$Area;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v13

    .line 847
    .end local v2    # "meteringArea":Landroid/hardware/Camera$Area;
    .end local v3    # "normalizedAreaUnbounded":Landroid/hardware/Camera$Area;
    .end local v7    # "previewMetering":Landroid/graphics/Rect;
    .end local v8    # "reportedMetering":Landroid/graphics/Rect;
    .end local v9    # "reportedMeteringRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    :cond_2
    new-instance v2, Landroid/hardware/Camera$Area;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v13

    invoke-direct {v2, v4, v13}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .restart local v2    # "meteringArea":Landroid/hardware/Camera$Area;
    goto :goto_0
.end method

.method public static convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .locals 8
    .param p0, "activeArraySize"    # Landroid/graphics/Rect;
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x0

    .line 759
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v1, v7, v7, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 763
    .local v1, "activeArraySizeOnly":Landroid/graphics/Rect;
    move-object v3, p1

    .line 765
    .local v3, "userCropRegion":Landroid/graphics/Rect;
    if-nez v3, :cond_0

    .line 766
    move-object v3, v1

    .line 769
    :cond_0
    sget-boolean v0, Landroid/hardware/camera2/legacy/ParameterUtils;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 770
    const-string v0, "ParameterUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertScalerCropRegion - user crop region was "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 774
    .local v4, "reportedCropRegion":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "previewCropRegion":Landroid/graphics/Rect;
    move-object v0, p3

    move-object v2, p2

    .line 775
    invoke-static/range {v0 .. v5}, Landroid/hardware/camera2/legacy/ParameterUtils;->getClosestAvailableZoomCrop(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v6

    .line 779
    .local v6, "zoomIdx":I
    sget-boolean v0, Landroid/hardware/camera2/legacy/ParameterUtils;->VERBOSE:Z

    if-eqz v0, :cond_2

    .line 780
    const-string v0, "ParameterUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertScalerCropRegion - zoom calculated to: zoomIndex = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", reported crop region = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", preview crop region = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_2
    new-instance v0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    invoke-direct {v0, v6, v5, v4}, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;
    .locals 3
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 242
    const-string/jumbo v0, "size must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static convertSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v3, "sizeList must not be null"

    invoke-static {p0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 255
    .local v1, "s":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/util/Size;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v1    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    return-object v2
.end method

.method public static convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v5, "sizeList must not be null"

    invoke-static {p0, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/util/Size;

    .line 267
    .local v0, "array":[Landroid/util/Size;
    const/4 v1, 0x0

    .line 268
    .local v1, "ctr":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 269
    .local v4, "s":Landroid/hardware/Camera$Size;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ctr":I
    .local v2, "ctr":I
    new-instance v5, Landroid/util/Size;

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    aput-object v5, v0, v1

    move v1, v2

    .line 270
    .end local v2    # "ctr":I
    .restart local v1    # "ctr":I
    goto :goto_0

    .line 271
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    return-object v0
.end method

.method private static getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;
    .locals 10
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "streamSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    const-string/jumbo v8, "params must not be null"

    invoke-static {p0, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v8, "activeArray must not be null"

    invoke-static {p1, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string/jumbo v8, "streamSize must not be null"

    invoke-static {p2, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-static {p1, p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v5

    .line 667
    .local v5, "unzoomedStreamCrop":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v8

    if-nez v8, :cond_1

    .line 669
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/graphics/Rect;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 695
    :cond_0
    return-object v7

    .line 672
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 673
    .local v7, "zoomCropRectangles":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 674
    .local v2, "scaleMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 676
    .local v3, "scaledRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 677
    .local v6, "zoom":I
    const/high16 v8, 0x42c80000    # 100.0f

    int-to-float v9, v6

    div-float v4, v8, v9

    .line 680
    .local v4, "shrinkRatio":F
    invoke-static {v5, v3}, Landroid/hardware/camera2/utils/ParamsUtils;->convertRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 682
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-virtual {v2, v4, v4, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 687
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 689
    invoke-static {v3}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    .line 692
    .local v1, "intRect":Landroid/graphics/Rect;
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getAvailablePreviewZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "previewSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    const-string/jumbo v0, "params must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v0, "activeArray must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v0, "previewSize must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    const-string/jumbo v0, "params must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v0, "activeArray must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-static {p1}, Landroid/hardware/camera2/utils/ParamsUtils;->createSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getClosestAvailableZoomCrop(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 16
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "streamSize"    # Landroid/util/Size;
    .param p3, "cropRegion"    # Landroid/graphics/Rect;
    .param p4, "reportedCropRegion"    # Landroid/graphics/Rect;
    .param p5, "previewCropRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 383
    const-string/jumbo v13, "params must not be null"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v13, "activeArray must not be null"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string/jumbo v13, "streamSize must not be null"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v13, "reportedCropRegion must not be null"

    move-object/from16 v0, p4

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v13, "previewCropRegion must not be null"

    move-object/from16 v0, p5

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 394
    .local v1, "actualCrop":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 395
    const-string v13, "ParameterUtils"

    const-string v14, "getClosestAvailableZoomCrop - Crop region out of range; setting to active array size"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 400
    :cond_0
    invoke-static/range {p1 .. p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v12

    .line 403
    .local v12, "previewCrop":Landroid/graphics/Rect;
    invoke-static {v12, v1}, Landroid/hardware/camera2/legacy/ParameterUtils;->shrinkToSameAspectRatioCentered(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 406
    .local v7, "cropRegionAsPreview":Landroid/graphics/Rect;
    sget-boolean v13, Landroid/hardware/camera2/legacy/ParameterUtils;->VERBOSE:Z

    if-eqz v13, :cond_1

    .line 407
    const-string v13, "ParameterUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getClosestAvailableZoomCrop - actualCrop = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v13, "ParameterUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getClosestAvailableZoomCrop - previewCrop = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v13, "ParameterUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getClosestAvailableZoomCrop - cropRegionAsPreview = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    const/4 v5, 0x0

    .line 418
    .local v5, "bestReportedCropRegion":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 419
    .local v4, "bestPreviewCropRegion":Landroid/graphics/Rect;
    const/4 v6, -0x1

    .line 421
    .local v6, "bestZoomIndex":I
    invoke-static/range {p0 .. p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v3

    .line 423
    .local v3, "availableReportedCropRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static/range {p0 .. p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailablePreviewZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    move-result-object v2

    .line 426
    .local v2, "availablePreviewCropRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-boolean v13, Landroid/hardware/camera2/legacy/ParameterUtils;->VERBOSE:Z

    if-eqz v13, :cond_2

    .line 427
    const-string v13, "ParameterUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getClosestAvailableZoomCrop - availableReportedCropRegions = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/hardware/camera2/utils/ListUtils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v13, "ParameterUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getClosestAvailableZoomCrop - availablePreviewCropRegions = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2}, Landroid/hardware/camera2/utils/ListUtils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-eq v13, v14, :cond_3

    .line 436
    new-instance v13, Ljava/lang/AssertionError;

    const-string v14, "available reported/preview crop region size mismatch"

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 439
    :cond_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_6

    .line 440
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 441
    .local v8, "currentPreviewCropRegion":Landroid/graphics/Rect;
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 444
    .local v9, "currentReportedCropRegion":Landroid/graphics/Rect;
    const/4 v13, -0x1

    if-ne v6, v13, :cond_4

    .line 445
    const/4 v11, 0x1

    .line 456
    .local v11, "isBest":Z
    :goto_1
    if-eqz v11, :cond_6

    .line 457
    move-object v4, v8

    .line 458
    move-object v5, v9

    .line 459
    move v6, v10

    .line 439
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 446
    .end local v11    # "isBest":Z
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-lt v13, v14, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-lt v13, v14, :cond_5

    .line 448
    const/4 v11, 0x1

    .restart local v11    # "isBest":Z
    goto :goto_1

    .line 450
    .end local v11    # "isBest":Z
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "isBest":Z
    goto :goto_1

    .line 465
    .end local v8    # "currentPreviewCropRegion":Landroid/graphics/Rect;
    .end local v9    # "currentReportedCropRegion":Landroid/graphics/Rect;
    .end local v11    # "isBest":Z
    :cond_6
    const/4 v13, -0x1

    if-ne v6, v13, :cond_7

    .line 467
    new-instance v13, Ljava/lang/AssertionError;

    const-string v14, "Should\'ve found at least one valid zoom index"

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 471
    :cond_7
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 472
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 474
    return v6
.end method

.method public static getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 291
    const-string/jumbo v1, "params must not be null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-static {v0}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public static getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F
    .locals 5
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 708
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 716
    :goto_0
    return v1

    .line 712
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    .line 713
    .local v2, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 714
    .local v0, "zoom":I
    int-to-float v3, v0

    mul-float/2addr v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v1, v3, v4

    .line 716
    .local v1, "zoomRatio":F
    goto :goto_0
.end method

.method private static getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 499
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "previewSize must not be wider than activeArray"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 501
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "previewSize must not be taller than activeArray"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 504
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 505
    .local v0, "aspectRatioArray":F
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 510
    .local v1, "aspectRatioPreview":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v2, v6

    .line 511
    .local v2, "cropH":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v4, v6

    .line 512
    .local v4, "cropW":F
    sub-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 514
    cmpg-float v6, v1, v0

    if-gez v6, :cond_3

    .line 516
    mul-float v4, v2, v1

    .line 524
    :cond_2
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 525
    .local v5, "translateMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v8, v8, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 528
    .local v3, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 529
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 531
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 534
    invoke-static {v3}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 519
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v5    # "translateMatrix":Landroid/graphics/Matrix;
    :cond_3
    div-float v2, v4, v1

    goto :goto_0
.end method

.method private static getZoomRatio(Landroid/util/Size;Landroid/util/Size;)Landroid/util/SizeF;
    .locals 5
    .param p0, "activeArraySize"    # Landroid/util/Size;
    .param p1, "cropSize"    # Landroid/util/Size;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 732
    const-string v2, "activeArraySize must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v2, "cropSize must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string v3, "cropSize.width must be positive"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 735
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string v3, "cropSize.height must be positive"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 737
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 738
    .local v1, "zoomRatioWidth":F
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 740
    .local v0, "zoomRatioHeight":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method private static shrinkToSameAspectRatioCentered(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "reference"    # Landroid/graphics/Rect;
    .param p1, "shrinkTarget"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 551
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 552
    .local v0, "aspectRatioReference":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 555
    .local v1, "aspectRatioShrinkTarget":F
    cmpg-float v6, v1, v0

    if-gez v6, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v2, v6

    .line 558
    .local v2, "cropH":F
    mul-float v3, v2, v1

    .line 565
    .local v3, "cropW":F
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 566
    .local v5, "translateMatrix":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 569
    .local v4, "shrunkRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v2, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 572
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 574
    invoke-static {v4}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 561
    .end local v2    # "cropH":F
    .end local v3    # "cropW":F
    .end local v4    # "shrunkRect":Landroid/graphics/RectF;
    .end local v5    # "translateMatrix":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v3, v6

    .line 562
    .restart local v3    # "cropW":F
    div-float v2, v3, v1

    .restart local v2    # "cropH":F
    goto :goto_0
.end method

.method public static stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;
    .locals 4
    .param p0, "area"    # Landroid/hardware/Camera$Area;

    .prologue
    const/16 v3, 0x2c

    .line 301
    if-nez p0, :cond_0

    .line 302
    const/4 v2, 0x0

    .line 316
    :goto_0
    return-object v2

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 307
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 308
    const-string v2, "(["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static stringFromAreaList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 328
    const/4 v4, 0x0

    .line 346
    :goto_0
    return-object v4

    .line 331
    :cond_0
    const/4 v1, 0x0

    .line 332
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 333
    .local v0, "area":Landroid/hardware/Camera$Area;
    if-nez v0, :cond_2

    .line 334
    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_1

    .line 340
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 344
    goto :goto_1

    .line 336
    :cond_2
    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 346
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

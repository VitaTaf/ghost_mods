.class Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;
.super Landroid/util/Property;
.source "EpicenterClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClipDimenProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# static fields
.field public static final TARGET_X:C = 'x'

.field public static final TARGET_Y:C = 'y'


# instance fields
.field private final mTargetDimension:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(C)V
    .locals 3
    .param p1, "targetDimension"    # C

    .prologue
    .line 204
    const-class v0, Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clip_bounds_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;->mTempRect:Landroid/graphics/Rect;

    .line 206
    iput p1, p0, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;->mTargetDimension:I

    .line 207
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "object"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;->mTempRect:Landroid/graphics/Rect;

    .line 212
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 215
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;->get(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # Landroid/graphics/Rect;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;->mTempRect:Landroid/graphics/Rect;

    .line 221
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget v1, p0, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;->mTargetDimension:I

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1

    .line 223
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 224
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 229
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 231
    :cond_0
    return-void

    .line 226
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 227
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Rect;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;->set(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

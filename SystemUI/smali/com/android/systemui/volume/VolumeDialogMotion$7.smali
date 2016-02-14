.class Lcom/android/systemui/volume/VolumeDialogMotion$7;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$7;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$7;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$700(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$7;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$7;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$400(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "posY":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$7;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$400(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion$7;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

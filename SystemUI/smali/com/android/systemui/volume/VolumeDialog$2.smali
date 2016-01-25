.class Lcom/android/systemui/volume/VolumeDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$2;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 276
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mLastActiveStream:I
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$500(Lcom/android/systemui/volume/VolumeDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$600(Lcom/android/systemui/volume/VolumeDialog;)I

    move-result v4

    if-ne v3, v4, :cond_0

    if-ne p6, p2, :cond_0

    if-eq p7, p3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 278
    .local v2, "moved":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLayoutChange moved="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mLastActiveStream:I
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$500(Lcom/android/systemui/volume/VolumeDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$600(Lcom/android/systemui/volume/VolumeDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$600(Lcom/android/systemui/volume/VolumeDialog;)I

    move-result v4

    # setter for: Lcom/android/systemui/volume/VolumeDialog;->mLastActiveStream:I
    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialog;->access$502(Lcom/android/systemui/volume/VolumeDialog;I)I

    .line 284
    if-eqz v2, :cond_4

    .line 285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$800(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 286
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$800(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "c":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "moved":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v0    # "c":Landroid/view/View;
    .restart local v1    # "i":I
    .restart local v2    # "moved":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$2;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-ne v0, v3, :cond_4

    .line 289
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$2;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialog;->access$1000(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 294
    .end local v0    # "c":Landroid/view/View;
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

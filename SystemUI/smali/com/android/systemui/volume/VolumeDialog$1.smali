.class Lcom/android/systemui/volume/VolumeDialog$1;
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
    .line 250
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
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
    .line 254
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChange old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    if-ne p6, p2, :cond_1

    if-eq p7, p3, :cond_3

    .line 258
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->access$300(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->access$300(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 262
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$1;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->access$500(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 267
    .end local v0    # "c":Landroid/view/View;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

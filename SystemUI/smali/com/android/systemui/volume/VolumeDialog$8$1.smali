.class Lcom/android/systemui/volume/VolumeDialog$8$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$8;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$8;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$8$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$8;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setZenMode(I)V

    .line 879
    return-void
.end method
.class Lcom/android/systemui/volume/VolumeDialog$10$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$10;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$10;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$5100(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$5100(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialog$Callback;->onSettingsClicked()V

    :cond_0
    return-void
.end method

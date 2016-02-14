.class Lcom/android/systemui/volume/VolumeDialog$6;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->access$2902(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3000(Lcom/android/systemui/volume/VolumeDialog;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

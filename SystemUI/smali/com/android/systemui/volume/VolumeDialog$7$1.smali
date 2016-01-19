.class Lcom/android/systemui/volume/VolumeDialog$7$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$7;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$7$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 865
    const/16 v0, 0x8

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$7$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$7;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->onSettingsClickedH()V

    .line 867
    return-void
.end method

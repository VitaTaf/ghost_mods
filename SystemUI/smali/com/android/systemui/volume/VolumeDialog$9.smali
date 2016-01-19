.class Lcom/android/systemui/volume/VolumeDialog$9;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenFooter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
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
    .line 884
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismiss(I)V

    .line 899
    return-void
.end method

.method public onFooterExpanded()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3900(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 888
    return-void
.end method

.method public onSettingsClicked()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismiss(I)V

    .line 893
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->onZenSettingsClickedH()V

    .line 894
    return-void
.end method

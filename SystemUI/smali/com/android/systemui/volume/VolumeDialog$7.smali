.class Lcom/android/systemui/volume/VolumeDialog$7;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 865
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 868
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mExpanding:Z
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 872
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$4000(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 870
    .local v0, "newExpand":Z
    :goto_1
    const/4 v3, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 871
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4100(Lcom/android/systemui/volume/VolumeDialog;Z)V

    goto :goto_0

    .end local v0    # "newExpand":Z
    :cond_1
    move v0, v2

    .line 869
    goto :goto_1
.end method

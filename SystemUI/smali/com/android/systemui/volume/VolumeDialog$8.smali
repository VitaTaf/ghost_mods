.class Lcom/android/systemui/volume/VolumeDialog$8;
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
    .line 872
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3800(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$8$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$8$1;-><init>(Lcom/android/systemui/volume/VolumeDialog$8;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 881
    return-void
.end method

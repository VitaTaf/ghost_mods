.class Lcom/android/systemui/volume/VolumeDialogComponent$2;
.super Lcom/android/systemui/volume/VolumeDialog;
.source "VolumeDialogComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Context;Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "x2"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/volume/VolumeDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    return-void
.end method


# virtual methods
.method protected onZenSettingsClickedH()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    # invokes: Lcom/android/systemui/volume/VolumeDialogComponent;->startZenSettings()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->access$100(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    .line 60
    return-void
.end method

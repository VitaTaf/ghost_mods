.class Lcom/android/systemui/volume/VolumeDialog$5;
.super Lcom/android/systemui/volume/SafetyWarningDialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/SafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 813
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3000(Lcom/android/systemui/volume/VolumeDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->access$3102(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 815
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    invoke-static {v0, v3}, Lcom/android/systemui/volume/VolumeDialog;->access$3200(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 817
    return-void

    .line 815
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

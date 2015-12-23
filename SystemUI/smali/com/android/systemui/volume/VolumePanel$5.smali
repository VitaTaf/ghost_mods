.class Lcom/android/systemui/volume/VolumePanel$5;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x6

    .line 557
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 561
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    .line 564
    :cond_0
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 566
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    .line 569
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    .line 572
    :cond_2
    return-void
.end method

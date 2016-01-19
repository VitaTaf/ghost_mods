.class Lcom/android/systemui/volume/VolumePanelComponent$2;
.super Ljava/lang/Object;
.source "VolumePanelComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanelComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanelComponent;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelComponent$2;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$2;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mSysui:Lcom/android/systemui/SystemUI;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$400(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/SystemUI;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$2;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$800(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent$2;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mDismissDelay:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanelComponent;->access$700(Lcom/android/systemui/volume/VolumePanelComponent;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    .line 135
    return-void
.end method

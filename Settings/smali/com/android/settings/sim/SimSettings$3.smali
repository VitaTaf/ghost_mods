.class Lcom/android/settings/sim/SimSettings$3;
.super Landroid/os/Handler;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1022
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1036
    :goto_0
    return-void

    .line 1025
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$1200(Lcom/android/settings/sim/SimSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$1300(Lcom/android/settings/sim/SimSettings;)V

    goto :goto_0

    .line 1032
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateAvailableSubInfos()V
    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$1400(Lcom/android/settings/sim/SimSettings;)V

    .line 1033
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;)V

    goto :goto_0

    .line 1022
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

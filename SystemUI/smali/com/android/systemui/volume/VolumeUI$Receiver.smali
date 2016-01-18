.class final Lcom/android/systemui/volume/VolumeUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeUI$1;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$Receiver;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "action":Ljava/lang/String;
    const-string v3, "component"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 291
    .local v1, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 292
    .local v2, "current":Z
    const-string v3, "com.android.systemui.vui.ENABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 293
    if-nez v2, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # invokes: Lcom/android/systemui/volume/VolumeUI;->showServiceActivationDialog(Landroid/content/ComponentName;)V
    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeUI;->access$1500(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)V

    .line 297
    :cond_0
    const-string v3, "com.android.systemui.vui.DISABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 298
    if-eqz v2, :cond_1

    .line 299
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ServiceMonitor;->setComponent(Landroid/content/ComponentName;)V

    .line 302
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.vui.ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "com.android.systemui.vui.DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeUI;->access$600(Lcom/android/systemui/volume/VolumeUI;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    return-void
.end method

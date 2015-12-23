.class Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureSharingTouchInputReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;


# direct methods
.method constructor <init>(Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver$1;->this$0:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.motorola.internal.policy.statusbar.NOTIFICATION_VIEW_FULLY_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "GSTouchInputReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "GSTouchInputReceiver"

    const-string v2, "ACTION_NOTIFICATION_VIEW_FULLY_VISIBLE received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver$1;->this$0:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    const/4 v2, 0x1

    # invokes: Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->setNotificationExpanded(Z)V
    invoke-static {v1, v2}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->access$000(Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;Z)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    const-string v1, "com.motorola.internal.policy.statusbar.NOTIFICATION_VIEW_FULLY_COLLAPSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-string v1, "GSTouchInputReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    const-string v1, "GSTouchInputReceiver"

    const-string v2, "ACTION_NOTIFICATION_VIEW_FULLY_COLLAPSED received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver$1;->this$0:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    const/4 v2, 0x0

    # invokes: Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->setNotificationExpanded(Z)V
    invoke-static {v1, v2}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->access$000(Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;Z)V

    goto :goto_0
.end method

.class Lcom/motorola/internal/widget/GestureSharingTouchManager$2;
.super Landroid/content/BroadcastReceiver;
.source "GestureSharingTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/GestureSharingTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/widget/GestureSharingTouchManager;


# direct methods
.method constructor <init>(Lcom/motorola/internal/widget/GestureSharingTouchManager;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager$2;->this$0:Lcom/motorola/internal/widget/GestureSharingTouchManager;

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

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const-string v0, "GSTouchManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "GSTouchManager"

    const-string v1, "ACTION_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager$2;->this$0:Lcom/motorola/internal/widget/GestureSharingTouchManager;

    # invokes: Lcom/motorola/internal/widget/GestureSharingTouchManager;->handleScreenOn()V
    invoke-static {v0}, Lcom/motorola/internal/widget/GestureSharingTouchManager;->access$000(Lcom/motorola/internal/widget/GestureSharingTouchManager;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "GSTouchManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const-string v0, "GSTouchManager"

    const-string v1, "ACTION_SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager$2;->this$0:Lcom/motorola/internal/widget/GestureSharingTouchManager;

    # invokes: Lcom/motorola/internal/widget/GestureSharingTouchManager;->handleScreenOff()V
    invoke-static {v0}, Lcom/motorola/internal/widget/GestureSharingTouchManager;->access$100(Lcom/motorola/internal/widget/GestureSharingTouchManager;)V

    goto :goto_0
.end method

.class Lcom/motorola/internal/widget/GestureSharingTouchManager$1;
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
    .line 37
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager$1;->this$0:Lcom/motorola/internal/widget/GestureSharingTouchManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 41
    .local v0, "data":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 43
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "com.motorola.zap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "GSTouchManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string v2, "GSTouchManager"

    const-string v3, "Sending ACTION_GS_PACKAGE_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.internal.intent.action.GS_PACKAGE_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    :cond_2
    return-void
.end method

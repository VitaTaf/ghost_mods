.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->requestUnlock(Landroid/os/IRemoteCallback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field final synthetic val$callback:Landroid/os/IRemoteCallback;

.field final synthetic val$dismiss:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/os/IRemoteCallback;Z)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$callback:Landroid/os/IRemoteCallback;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$dismiss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$callback:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$dismiss:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote error from callback of request unlock"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

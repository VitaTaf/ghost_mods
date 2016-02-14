.class Lcom/android/keyguard/KeyguardRemoteLockView$1;
.super Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;
.source "KeyguardRemoteLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRemoteLockView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRemoteLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRemoteLockView;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;-><init>(Lcom/android/keyguard/KeyguardRemoteLockView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onRemoteCheckResponse(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    new-instance v1, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;-><init>(Lcom/android/keyguard/KeyguardRemoteLockView$1;Z)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardRemoteLockView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

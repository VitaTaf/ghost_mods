.class Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$1;
.super Ljava/lang/Object;
.source "KeyguardRemoteLockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->onRemoteCheckResponse(Z)V

    return-void
.end method

.class Lcom/android/keyguard/KeyguardUpdateMonitor$8;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForHFARunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->isHFARunningInDb()Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    # setter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHFARunning:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1802(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    return-void
.end method

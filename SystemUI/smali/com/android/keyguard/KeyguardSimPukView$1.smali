.class Lcom/android/keyguard/KeyguardSimPukView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v1

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$200(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 73
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockedSimCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 80
    .end local v0    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->resetState()V

    goto :goto_0
.end method

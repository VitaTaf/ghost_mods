.class Lcom/android/keyguard/KeyguardSimPukView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->onFinishInflate()V
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
    .line 236
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 239
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView;->doHapticKeyClick()V

    .line 240
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 241
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 242
    .local v0, "count":I
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    .line 243
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 244
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v3

    .line 247
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 249
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 254
    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 255
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_4

    .line 258
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 259
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 252
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSkippedSubId(I)V

    goto :goto_1

    .line 262
    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    if-eq v2, v4, :cond_5

    .line 263
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 267
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView;->reset()V

    .line 268
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v4}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    goto :goto_0
.end method

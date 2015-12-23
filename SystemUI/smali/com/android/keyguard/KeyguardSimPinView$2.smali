.class Lcom/android/keyguard/KeyguardSimPinView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 197
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPinView;->doHapticKeyClick()V

    .line 198
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 199
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 200
    .local v0, "count":I
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    .line 201
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 202
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$300(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v3

    .line 205
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 206
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 207
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 212
    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 213
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_4

    .line 216
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 217
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 210
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSkippedSubId(I)V

    goto :goto_1

    .line 220
    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    if-eq v2, v4, :cond_5

    .line 221
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 225
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPinView;->reset()V

    .line 226
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v4}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    goto :goto_0
.end method

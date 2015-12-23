.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 96
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardSimPukView$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$300(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 103
    sget v0, Lcom/android/keyguard/R$string;->kg_puk_enter_pin_hint:I

    .line 124
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(Z)V

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 128
    :cond_1
    return-void

    .line 105
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    .line 107
    :cond_3
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_5

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$400(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 110
    sget v0, Lcom/android/keyguard/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 112
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    .line 114
    :cond_5
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 117
    sget v0, Lcom/android/keyguard/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$500(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 120
    :cond_6
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 121
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_0
.end method

.method reset()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 131
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v10, ""

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/keyguard/KeyguardSimPukView;->access$602(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v10, ""

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/keyguard/KeyguardSimPukView;->access$702(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iput v11, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 134
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$800(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 137
    .local v4, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v10

    if-eq v9, v10, :cond_0

    .line 194
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v10

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v9, v10}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 142
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 143
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 144
    .local v1, "count":I
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 146
    .local v7, "rez":Landroid/content/res/Resources;
    const/4 v0, -0x1

    .line 147
    .local v0, "color":I
    if-ge v1, v13, :cond_3

    .line 148
    sget v9, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 151
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 152
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v9, v9, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v9, v5, v12}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 191
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$1000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    .end local v0    # "color":I
    .end local v1    # "count":I
    .end local v5    # "msg":Ljava/lang/String;
    .end local v7    # "rez":Landroid/content/res/Resources;
    :cond_2
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v9, v9, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v9}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    goto :goto_0

    .line 156
    .restart local v0    # "color":I
    .restart local v1    # "count":I
    .restart local v7    # "rez":Landroid/content/res/Resources;
    :cond_3
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 157
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 158
    .local v2, "displayName":Ljava/lang/CharSequence;
    :goto_2
    sget v9, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint_multi:I

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .restart local v5    # "msg":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 160
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 163
    :cond_4
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getValidSimCount()I

    move-result v9

    if-lt v9, v13, :cond_8

    .line 164
    sget v6, Lcom/android/keyguard/R$drawable;->zz_moto_ic_sim_skip:I

    .line 165
    .local v6, "resId":I
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockedSimCount()I

    move-result v9

    if-lt v9, v13, :cond_5

    .line 166
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v8

    .line 167
    .local v8, "subId":I
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 168
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 171
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 178
    .end local v8    # "subId":I
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 179
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 157
    .end local v2    # "displayName":Ljava/lang/CharSequence;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "resId":I
    :cond_6
    const-string v2, ""

    goto :goto_2

    .line 174
    .restart local v2    # "displayName":Ljava/lang/CharSequence;
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "resId":I
    .restart local v8    # "subId":I
    :cond_7
    sget v6, Lcom/android/keyguard/R$drawable;->zz_moto_ic_sim_prev:I

    goto :goto_3

    .line 183
    .end local v6    # "resId":I
    .end local v8    # "subId":I
    :cond_8
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 184
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 185
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1
.end method

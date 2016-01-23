.class Lcom/android/settings/sim/SimDialogActivity$4;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$4;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$id:I

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x1

    .line 202
    iget v3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$id:I

    packed-switch v3, :pswitch_data_0

    .line 227
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dialog type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in SIM dialog."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$subInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 205
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    # invokes: Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v3, v4}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 231
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 232
    return-void

    .line 208
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 210
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity$4;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    if-ge p2, v5, :cond_0

    const/4 v3, 0x0

    :goto_1
    # invokes: Lcom/android/settings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v4, v3}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 216
    .end local v0    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$subInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 218
    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_1

    .line 219
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 220
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    # invokes: Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V
    invoke-static {v3, v4}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

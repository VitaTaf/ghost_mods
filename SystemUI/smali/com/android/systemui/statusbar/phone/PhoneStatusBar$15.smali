.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$CarrierLabelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCarrierLabel(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "carrierLabel"    # Ljava/lang/String;
    .param p3, "cellBroadcastEnabled"    # Z
    .param p4, "cellBroadcastMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 992
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 993
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrierLabel: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " carrierLabel=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cellBroadcastEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cellBroadcastMessage=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1040
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1041
    const-string v1, "PhoneStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrierLabel: mCarrierLabel.getVisibility()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "VISIBLE"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCarrierLabel.getText()=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCellBroadcastMessage.getVisibility()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "VISIBLE"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCellBroadcastMessage.getText()=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_4
    return-void

    .line 1021
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1025
    :cond_6
    if-eqz p3, :cond_7

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1030
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1034
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1041
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_a

    const-string v0, "INVISIBLE"

    goto/16 :goto_1

    :cond_a
    const-string v0, "GONE"

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_c

    const-string v0, "INVISIBLE"

    goto/16 :goto_2

    :cond_c
    const-string v0, "GONE"

    goto/16 :goto_2
.end method

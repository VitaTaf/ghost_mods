.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotorolaMobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;I)V
    .locals 3
    .param p2, "subId"    # I

    .prologue
    .line 9953
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .line 9954
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 9956
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 9957
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener (Constr): Entered/Completed: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9963
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "callState"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 10126
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 10127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onCallStateChanged: Entered: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2200(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    .line 10136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->access$3300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;)V

    .line 10138
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    .line 10139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onCallStateChanged: completed: state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2200(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10145
    :cond_1
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 10099
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 10100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onDataActivity: Entered: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->setActivity(I)V

    .line 10108
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    .line 10109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onDataActivity: Completed direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10115
    :cond_1
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 10070
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 10071
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onDataConnectionStateChanged: Entered: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10079
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    .line 10080
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    .line 10081
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->access$3300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;)V

    .line 10083
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    .line 10084
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onDataConnectionStateChanged: Completed: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    :cond_1
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, -0x1

    .line 10003
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 10004
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotorolaMobilePhoneStateListener.onServiceStateChanged: Entered: voiceState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    :goto_1
    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dataState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    :goto_3
    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10040
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    .line 10041
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    .line 10042
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    .line 10047
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->access$3300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;)V

    .line 10049
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_2

    .line 10050
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotorolaMobilePhoneStateListener.onServiceStateChanged: Completed: voiceState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    :goto_6
    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dataState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    :cond_1
    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10062
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 10004
    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_3

    .line 10044
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    goto :goto_4

    :cond_8
    move v0, v1

    .line 10050
    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v1

    goto :goto_7
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 9970
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 9971
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onSignalStrengthsChanged: Entered: signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9986
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 9987
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->access$3300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;)V

    .line 9989
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    .line 9990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobilePhoneStateListener.onSignalStrengthsChanged: completed: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9996
    :cond_1
    return-void

    .line 9971
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

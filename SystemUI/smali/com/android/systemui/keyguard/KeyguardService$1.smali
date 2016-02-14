.class Lcom/android/systemui/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss()V

    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    return-void
.end method

.method public keyguardDone(ZZ)V
    .locals 3
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    const-string v0, "KeyguardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardDone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    return-void
.end method

.method public onActivityDrawn()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onActivityDrawn()V

    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onBootCompleted()V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSystemReady()V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    return-void
.end method

.method public setOccluded(Z)V
    .locals 3
    .param p1, "isOccluded"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    const-string v0, "KeyguardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOccluded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(Z)V

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    return-void
.end method

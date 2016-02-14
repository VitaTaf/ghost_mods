.class public Lcom/android/systemui/volume/VolumeDialogComponent;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mDialog:Lcom/android/systemui/volume/VolumeDialog;

.field private final mSysui:Lcom/android/systemui/SystemUI;

.field private final mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

.field private final mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 6
    .param p1, "sysui"    # Lcom/android/systemui/SystemUI;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "zen"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/VolumePolicy;

    const/16 v1, 0x190

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$2;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/volume/VolumeDialogComponent$1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialog;

    const/16 v2, 0x7e4

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeDialog$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->applyConfiguration()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogComponent;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogComponent;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->startSettings(Landroid/content/Intent;)V

    return-void
.end method

.method private applyConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportant(IZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportant(IZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog;->setShowHeaders(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->setAutomute(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog;->setSilentMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->showDndTile(Z)V

    return-void
.end method

.method private sendUserActivity()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .local v0, "kvm":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    :cond_0
    return-void
.end method

.method private startSettings(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method


# virtual methods
.method public dismissNow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->dismiss()V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/VolumeDialog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->register()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setCombinedIcon(Landroid/content/Context;Z)V

    return-void
.end method

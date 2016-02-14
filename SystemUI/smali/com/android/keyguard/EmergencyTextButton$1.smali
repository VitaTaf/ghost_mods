.class Lcom/android/keyguard/EmergencyTextButton$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyTextButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyTextButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyTextButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyTextButton;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/EmergencyTextButton$1;->this$0:Lcom/android/keyguard/EmergencyTextButton;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Z)V
    .locals 1
    .param p1, "inService"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/EmergencyTextButton$1;->this$0:Lcom/android/keyguard/EmergencyTextButton;

    # invokes: Lcom/android/keyguard/EmergencyTextButton;->updateEmergencyTextButton(Z)V
    invoke-static {v0, p1}, Lcom/android/keyguard/EmergencyTextButton;->access$000(Lcom/android/keyguard/EmergencyTextButton;Z)V

    return-void
.end method

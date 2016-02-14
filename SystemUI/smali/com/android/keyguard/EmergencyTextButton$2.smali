.class Lcom/android/keyguard/EmergencyTextButton$2;
.super Ljava/lang/Object;
.source "EmergencyTextButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyTextButton;->onFinishInflate()V
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
    iput-object p1, p0, Lcom/android/keyguard/EmergencyTextButton$2;->this$0:Lcom/android/keyguard/EmergencyTextButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/EmergencyTextButton$2;->this$0:Lcom/android/keyguard/EmergencyTextButton;

    # invokes: Lcom/android/keyguard/EmergencyTextButton;->takeEmergencyTextAction()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyTextButton;->access$100(Lcom/android/keyguard/EmergencyTextButton;)V

    return-void
.end method

.class Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 988
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

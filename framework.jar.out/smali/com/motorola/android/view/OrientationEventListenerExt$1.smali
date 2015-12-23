.class Lcom/motorola/android/view/OrientationEventListenerExt$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationEventListenerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/view/OrientationEventListenerExt;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/view/OrientationEventListenerExt;


# direct methods
.method constructor <init>(Lcom/motorola/android/view/OrientationEventListenerExt;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/motorola/android/view/OrientationEventListenerExt$1;->this$0:Lcom/motorola/android/view/OrientationEventListenerExt;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt$1;->this$0:Lcom/motorola/android/view/OrientationEventListenerExt;

    invoke-virtual {v0, p1}, Lcom/motorola/android/view/OrientationEventListenerExt;->onOrientationChanged(I)V

    .line 74
    return-void
.end method

.class Landroid/view/PhoneWindow$RotationWatcher$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PhoneWindow$RotationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/PhoneWindow$RotationWatcher;


# direct methods
.method constructor <init>(Landroid/view/PhoneWindow$RotationWatcher;)V
    .locals 0

    .prologue
    .line 4594
    iput-object p1, p0, Landroid/view/PhoneWindow$RotationWatcher$1;->this$0:Landroid/view/PhoneWindow$RotationWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4596
    iget-object v0, p0, Landroid/view/PhoneWindow$RotationWatcher$1;->this$0:Landroid/view/PhoneWindow$RotationWatcher;

    invoke-virtual {v0}, Landroid/view/PhoneWindow$RotationWatcher;->dispatchRotationChanged()V

    .line 4597
    return-void
.end method

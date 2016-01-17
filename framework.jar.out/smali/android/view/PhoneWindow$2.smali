.class Landroid/view/PhoneWindow$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PhoneWindow;->registerSwipeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/PhoneWindow;


# direct methods
.method constructor <init>(Landroid/view/PhoneWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/view/PhoneWindow$2;->this$0:Landroid/view/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    iget-object v0, p0, Landroid/view/PhoneWindow$2;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0}, Landroid/view/PhoneWindow;->dispatchOnWindowDismissed()V

    return-void
.end method

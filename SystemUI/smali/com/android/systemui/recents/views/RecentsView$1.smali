.class Lcom/android/systemui/recents/views/RecentsView$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTriggered:Z

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->mTriggered:Z

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 4

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->mTriggered:Z

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$1$1;-><init>(Lcom/android/systemui/recents/views/RecentsView$1;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->mTriggered:Z

    .line 509
    :cond_0
    return-void
.end method

.class Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$3;
.super Ljava/lang/Object;
.source "GestureSharingModalitySHubHandler.java"

# interfaces
.implements Lcom/motorola/slpc/ModalityManager$ModalityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;


# direct methods
.method constructor <init>(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$3;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModalityChange(Lcom/motorola/slpc/Transition;)V
    .locals 2
    .param p1, "transition"    # Lcom/motorola/slpc/Transition;

    .prologue
    const-string v0, "GSModalitySHubHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Modality Vehicle Listener - State change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$3;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->handleModalityChange(Lcom/motorola/slpc/Transition;)V
    invoke-static {v0, p1}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->access$000(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;Lcom/motorola/slpc/Transition;)V

    return-void
.end method

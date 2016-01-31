.class Lcom/android/settings/sim/addon/DDSUpdaterService$1;
.super Ljava/lang/Object;
.source "DDSUpdaterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/addon/DDSUpdaterService;->showToast(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/addon/DDSUpdaterService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/addon/DDSUpdaterService;Landroid/content/Context;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/sim/addon/DDSUpdaterService$1;->this$0:Lcom/android/settings/sim/addon/DDSUpdaterService;

    iput-object p2, p0, Lcom/android/settings/sim/addon/DDSUpdaterService$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/sim/addon/DDSUpdaterService$1;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/addon/DDSUpdaterService$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/sim/addon/DDSUpdaterService$1;->val$msgId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.class Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;
.super Ljava/lang/Object;
.source "RecentsResizeTaskDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsResizeTaskDialog;->createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v6, 0x7f0f0161

    # invokes: Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;Landroid/view/View;I)I

    move-result v1

    .line 85
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v6, 0x7f0f0162

    # invokes: Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;Landroid/view/View;I)I

    move-result v3

    .line 86
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v6, 0x7f0f0163

    # invokes: Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;Landroid/view/View;I)I

    move-result v2

    .line 87
    .local v2, "right":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v6, 0x7f0f0164

    # invokes: Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;Landroid/view/View;I)I

    move-result v0

    .line 88
    .local v0, "bottom":I
    if-le v0, v3, :cond_0

    if-gt v2, v1, :cond_1

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->val$context:Landroid/content/Context;

    const-string v5, "Invalid dimensions"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 90
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->dismiss()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTaskToResize:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resizeTask(ILandroid/graphics/Rect;)V

    .line 94
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->dismiss()V

    goto :goto_0
.end method

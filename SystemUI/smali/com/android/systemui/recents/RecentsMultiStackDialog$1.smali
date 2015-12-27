.class Lcom/android/systemui/recents/RecentsMultiStackDialog$1;
.super Ljava/lang/Object;
.source "RecentsMultiStackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsMultiStackDialog;->createAddStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v6, 0x7f0f0161

    # invokes: Lcom/android/systemui/recents/RecentsMultiStackDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->access$000(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/view/View;I)I

    move-result v1

    .line 98
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v6, 0x7f0f0162

    # invokes: Lcom/android/systemui/recents/RecentsMultiStackDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->access$000(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/view/View;I)I

    move-result v3

    .line 99
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v6, 0x7f0f0163

    # invokes: Lcom/android/systemui/recents/RecentsMultiStackDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->access$000(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/view/View;I)I

    move-result v2

    .line 100
    .local v2, "right":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v6, 0x7f0f0164

    # invokes: Lcom/android/systemui/recents/RecentsMultiStackDialog;->getDimensionFromEditText(Landroid/view/View;I)I
    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->access$000(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/view/View;I)I

    move-result v0

    .line 101
    .local v0, "bottom":I
    if-le v0, v3, :cond_0

    if-gt v2, v1, :cond_1

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->val$context:Landroid/content/Context;

    const-string v5, "Invalid dimensions"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 103
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->dismiss()V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->dismiss()V

    .line 109
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mCurrentDialogType:I

    .line 110
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v4, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackRect:Landroid/graphics/Rect;

    .line 111
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v6, "RecentsMultiStackDialog"

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

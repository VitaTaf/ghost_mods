.class Lcom/android/systemui/recents/RecentsMultiStackDialog$7;
.super Ljava/lang/Object;
.source "RecentsMultiStackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsMultiStackDialog;->createResizeStackPickStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iget v0, v0, Landroid/util/MutableInt;->value:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->dismiss()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mCurrentDialogType:I

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "RecentsMultiStackDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

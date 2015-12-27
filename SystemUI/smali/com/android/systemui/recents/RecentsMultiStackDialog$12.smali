.class Lcom/android/systemui/recents/RecentsMultiStackDialog$12;
.super Ljava/lang/Object;
.source "RecentsMultiStackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsMultiStackDialog;->createMoveTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

.field final synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iget v1, v1, Landroid/util/MutableInt;->value:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mStacks:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$StackInfo;

    .line 266
    .local v0, "toStack":Landroid/app/ActivityManager$StackInfo;
    iget v1, v0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTaskToMove:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    if-eq v1, v2, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTaskToMove:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToStack(IIZ)V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTaskToMove:Lcom/android/systemui/recents/model/Task;

    iget v2, v0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task;->setStackId(I)V

    .line 271
    .end local v0    # "toStack":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    return-void
.end method

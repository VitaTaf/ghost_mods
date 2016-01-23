.class Lcom/android/settings/MasterClearConfirm$2$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClearConfirm$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MasterClearConfirm$2;

.field final synthetic val$oldOrientation:I


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm$2;I)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$2$1;->this$1:Lcom/android/settings/MasterClearConfirm$2;

    iput p2, p0, Lcom/android/settings/MasterClearConfirm$2$1;->val$oldOrientation:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2$1;->this$1:Lcom/android/settings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    # getter for: Lcom/android/settings/MasterClearConfirm;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)Landroid/service/persistentdata/PersistentDataBlockManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2$1;->this$1:Lcom/android/settings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    # getter for: Lcom/android/settings/MasterClearConfirm;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$200(Lcom/android/settings/MasterClearConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2$1;->this$1:Lcom/android/settings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MasterClearConfirm$2$1;->val$oldOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2$1;->this$1:Lcom/android/settings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->doMasterClear()V
    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$100(Lcom/android/settings/MasterClearConfirm;)V

    .line 219
    return-void
.end method

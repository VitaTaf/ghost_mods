.class Lcom/android/settings/MasterClearConfirm$2;
.super Landroid/os/Handler;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 194
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 225
    return-void

    .line 196
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->getProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$300(Lcom/android/settings/MasterClearConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    # setter for: Lcom/android/settings/MasterClearConfirm;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/settings/MasterClearConfirm;->access$202(Lcom/android/settings/MasterClearConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 197
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    # getter for: Lcom/android/settings/MasterClearConfirm;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/MasterClearConfirm;->access$200(Lcom/android/settings/MasterClearConfirm;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 204
    .local v0, "oldOrientation":I
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 206
    new-instance v1, Lcom/android/settings/MasterClearConfirm$2$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MasterClearConfirm$2$1;-><init>(Lcom/android/settings/MasterClearConfirm$2;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/MasterClearConfirm$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

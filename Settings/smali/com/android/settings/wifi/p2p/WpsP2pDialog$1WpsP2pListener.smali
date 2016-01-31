.class Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;
.super Ljava/lang/Object;
.source "WpsP2pDialog.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WpsP2pDialog;-><init>(Landroid/content/Context;Landroid/net/wifi/WpsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsP2pListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWpsP2pCompletion()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$200(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$000(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->updateDialog(Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$100(Lcom/android/settings/wifi/p2p/WpsP2pDialog;Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method public onWpsP2pFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->dismiss()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$000(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    sget-object v2, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    # invokes: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->updateDialog(Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$100(Lcom/android/settings/wifi/p2p/WpsP2pDialog;Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V

    return-void

    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$000(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onWpsP2pStartSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$000(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->updateDialog(Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$100(Lcom/android/settings/wifi/p2p/WpsP2pDialog;Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$000(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->updateDialog(Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$100(Lcom/android/settings/wifi/p2p/WpsP2pDialog;Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

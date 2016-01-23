.class Lcom/android/settings/MotorolaPrivacy$3;
.super Landroid/webkit/WebViewClient;
.source "MotorolaPrivacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MotorolaPrivacy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MotorolaPrivacy;


# direct methods
.method constructor <init>(Lcom/android/settings/MotorolaPrivacy;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x1

    # setter for: Lcom/android/settings/MotorolaPrivacy;->pageLoaded:Z
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$202(Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$300(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$300(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$300(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/MotorolaPrivacy;->access$302(Lcom/android/settings/MotorolaPrivacy;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 123
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$000(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    const v2, 0x7f090a59

    invoke-virtual {v1, v2}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$000(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$000(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    const v3, 0x7f09031e

    invoke-virtual {v2, v3}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/MotorolaPrivacy$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings/MotorolaPrivacy$3$1;-><init>(Lcom/android/settings/MotorolaPrivacy$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$000(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 94
    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "email_id":[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v3, "message/rfc822"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, v1, v7

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    invoke-virtual {v3, v0}, Lcom/android/settings/MotorolaPrivacy;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v0    # "emailIntent":Landroid/content/Intent;
    .end local v1    # "email_id":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 103
    :cond_1
    const-string v3, "geo:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v2, "geoIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    invoke-virtual {v3, v2}, Lcom/android/settings/MotorolaPrivacy;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    .end local v2    # "geoIntent":Landroid/content/Intent;
    :cond_2
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

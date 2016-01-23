.class public Lcom/android/settings/MotorolaPrivacy;
.super Landroid/app/Activity;
.source "MotorolaPrivacy.java"


# static fields
.field private static pageLoaded:Z


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private isShowingErrorMsg:Z

.field private mURL:Ljava/lang/String;

.field private progressBar:Landroid/app/ProgressDialog;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/MotorolaPrivacy;->pageLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MotorolaPrivacy;->isShowingErrorMsg:Z

    .line 40
    const-string v0, "http://help.motorola.com/hc/apps/settings/index.php?type=privacy&topic=multiuser"

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->mURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MotorolaPrivacy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MotorolaPrivacy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MotorolaPrivacy;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/MotorolaPrivacy;->finishActivitiyWithoutAnimation()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 28
    sput-boolean p0, Lcom/android/settings/MotorolaPrivacy;->pageLoaded:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MotorolaPrivacy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/MotorolaPrivacy;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MotorolaPrivacy;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private finishActivitiyWithoutAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/MotorolaPrivacy;->finish()V

    .line 172
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/MotorolaPrivacy;->overridePendingTransition(II)V

    .line 173
    return-void
.end method

.method private getDeviceLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/settings/MotorolaPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 222
    .local v1, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "language":Ljava/lang/String;
    return-object v0
.end method

.method private showProgressBar(Z)V
    .locals 2
    .param p1, "pageLoaded"    # Z

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 193
    const v0, 0x7f090a59

    invoke-virtual {p0, v0}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090a54

    invoke-virtual {p0, v1}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f090a59

    const/4 v2, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    .line 48
    invoke-static {p0}, Lcom/android/settings/Utils;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iput-boolean v2, p0, Lcom/android/settings/MotorolaPrivacy;->isShowingErrorMsg:Z

    .line 50
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f09031e

    invoke-virtual {p0, v2}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/MotorolaPrivacy$1;

    invoke-direct {v3, p0}, Lcom/android/settings/MotorolaPrivacy$1;-><init>(Lcom/android/settings/MotorolaPrivacy;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/MotorolaPrivacy$2;

    invoke-direct {v1, p0}, Lcom/android/settings/MotorolaPrivacy$2;-><init>(Lcom/android/settings/MotorolaPrivacy;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v4}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090a5a

    invoke-virtual {p0, v1}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 144
    :goto_0
    return-void

    .line 73
    :cond_0
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/android/settings/MotorolaPrivacy;->setTheme(I)V

    .line 74
    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/android/settings/MotorolaPrivacy;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/MotorolaPrivacy;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/settings/MotorolaPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/MotorolaPrivacy;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    const v0, 0x7f0f00eb

    invoke-virtual {p0, v0}, Lcom/android/settings/MotorolaPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    .line 79
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/MotorolaPrivacy;->pageLoaded:Z

    .line 85
    sget-boolean v0, Lcom/android/settings/MotorolaPrivacy;->pageLoaded:Z

    invoke-direct {p0, v0}, Lcom/android/settings/MotorolaPrivacy;->showProgressBar(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/settings/MotorolaPrivacy$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MotorolaPrivacy$3;-><init>(Lcom/android/settings/MotorolaPrivacy;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/MotorolaPrivacy;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/MotorolaPrivacy;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->mURL:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/settings/MotorolaPrivacy;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;

    .line 209
    :cond_1
    return-void
.end method

.method public onDoneButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/settings/MotorolaPrivacy;->finish()V

    .line 189
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MotorolaPrivacy;->progressBar:Landroid/app/ProgressDialog;

    .line 154
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    iget-boolean v0, p0, Lcom/android/settings/MotorolaPrivacy;->isShowingErrorMsg:Z

    if-nez v0, :cond_0

    .line 183
    sget-boolean v0, Lcom/android/settings/MotorolaPrivacy;->pageLoaded:Z

    invoke-direct {p0, v0}, Lcom/android/settings/MotorolaPrivacy;->showProgressBar(Z)V

    .line 185
    :cond_0
    return-void
.end method

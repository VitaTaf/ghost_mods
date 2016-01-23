.class public Lcom/motorola/settings/extensions/InternetPrefSetting;
.super Landroid/app/Activity;
.source "InternetPrefSetting.java"


# instance fields
.field private final VERBOSE_ENABLED:Z

.field private mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "IntPrefSetting"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/settings/extensions/InternetPrefSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/extensions/InternetPrefSetting;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->exit()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/settings/extensions/InternetPrefSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/extensions/InternetPrefSetting;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->openSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/settings/extensions/InternetPrefSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/extensions/InternetPrefSetting;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    return v0
.end method

.method private createDialog()V
    .locals 6

    .prologue
    .line 61
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/motorola/settings/extensions/InternetPrefSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 63
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040053

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "layout":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09006f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090071

    new-instance v5, Lcom/motorola/settings/extensions/InternetPrefSetting$3;

    invoke-direct {v5, p0}, Lcom/motorola/settings/extensions/InternetPrefSetting$3;-><init>(Lcom/motorola/settings/extensions/InternetPrefSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090070

    new-instance v5, Lcom/motorola/settings/extensions/InternetPrefSetting$2;

    invoke-direct {v5, p0}, Lcom/motorola/settings/extensions/InternetPrefSetting$2;-><init>(Lcom/motorola/settings/extensions/InternetPrefSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/motorola/settings/extensions/InternetPrefSetting$1;

    invoke-direct {v4, p0}, Lcom/motorola/settings/extensions/InternetPrefSetting$1;-><init>(Lcom/motorola/settings/extensions/InternetPrefSetting;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    .line 89
    iget-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 90
    return-void
.end method

.method private exit()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/motorola/settings/extensions/InternetPrefSetting$4;

    invoke-direct {v0, p0}, Lcom/motorola/settings/extensions/InternetPrefSetting$4;-><init>(Lcom/motorola/settings/extensions/InternetPrefSetting;)V

    .line 112
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    iget-boolean v1, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "IntPrefSetting"

    const-string v2, "finish()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->finish()V

    .line 117
    return-void
.end method

.method private openSettings()V
    .locals 3

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "IntPrefSetting"

    const-string v2, "openSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_IP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->exit()V

    .line 127
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iget-boolean v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "IntPrefSetting"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->createDialog()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    iget-boolean v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "IntPrefSetting"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 58
    :cond_1
    return-void
.end method

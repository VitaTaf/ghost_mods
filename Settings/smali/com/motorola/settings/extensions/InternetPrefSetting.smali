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
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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
    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->exit()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/settings/extensions/InternetPrefSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/extensions/InternetPrefSetting;

    .prologue
    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->openSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/settings/extensions/InternetPrefSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/extensions/InternetPrefSetting;

    .prologue
    iget-boolean v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    return v0
.end method

.method private createDialog()V
    .locals 6

    .prologue
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/motorola/settings/extensions/InternetPrefSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040053

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "layout":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private exit()V
    .locals 3

    .prologue
    new-instance v0, Lcom/motorola/settings/extensions/InternetPrefSetting$4;

    invoke-direct {v0, p0}, Lcom/motorola/settings/extensions/InternetPrefSetting$4;-><init>(Lcom/motorola/settings/extensions/InternetPrefSetting;)V

    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-boolean v1, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "IntPrefSetting"

    const-string v2, "finish()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->finish()V

    return-void
.end method

.method private openSettings()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "IntPrefSetting"

    const-string v2, "openSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_IP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->exit()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "IntPrefSetting"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->createDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "IntPrefSetting"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

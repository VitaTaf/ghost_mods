.class public Lcom/android/settings/nfc/NfcAlert;
.super Lcom/android/internal/app/AlertActivity;
.source "NfcAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 11

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04001e

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0f0048

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "linkView":Landroid/widget/TextView;
    const-string v7, "http://help.motorola.com/hc/apps/nfc/?os=4.2.2"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "fullUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10800000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f09003b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "link":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .local v5, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v7, Lcom/android/settings/nfc/NfcAlert$1;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/nfc/NfcAlert$1;-><init>(Lcom/android/settings/nfc/NfcAlert;Landroid/content/Intent;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v7, 0x7f0f004a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings/nfc/NfcAlert;->mCheckBox:Landroid/widget/CheckBox;

    return-object v6
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    const/4 v0, 0x0

    .local v0, "checkBoxRlt":Z
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v3, "NfcAlertNotice"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nfc/NfcAlert;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "skipMessage"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    goto :goto_0

    .end local v0    # "checkBoxRlt":Z
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string v3, "NfcAlertNotice"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nfc/NfcAlert;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v3, "skipMessage"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "skipAlert":Z
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcAlert;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcAlert;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f09003e

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->setupAlert()V

    .end local v0    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    return-void
.end method

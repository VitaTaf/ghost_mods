.class public Lcom/motorola/settings/TetherDisclaimer;
.super Landroid/app/Activity;
.source "TetherDisclaimer.java"


# instance fields
.field private mDlgBtnClicked:Z

.field private mDoNotShowChecked:Z

.field private mStartUpAlrtDlg:Landroid/app/AlertDialog;

.field private mTetherResult:I

.field private mTetherType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    .line 55
    iput-boolean v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mDlgBtnClicked:Z

    .line 56
    iput-boolean v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/settings/TetherDisclaimer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/TetherDisclaimer;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/settings/TetherDisclaimer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/TetherDisclaimer;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/settings/TetherDisclaimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/TetherDisclaimer;

    .prologue
    .line 36
    iget v0, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherResult:I

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/settings/TetherDisclaimer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/TetherDisclaimer;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherResult:I

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/settings/TetherDisclaimer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/TetherDisclaimer;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/motorola/settings/TetherDisclaimer;->setResultAndFinish(I)V

    return-void
.end method

.method private getTetherMsgKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const-string v0, ""

    .line 91
    .local v0, "key":Ljava/lang/String;
    iget v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    if-nez v1, :cond_1

    .line 92
    const-string v0, "wifi_ap_display_starup_warning"

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 94
    const-string v0, "usb_tether_display_starup_warning"

    goto :goto_0

    .line 95
    :cond_2
    iget v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 96
    const-string v0, "bt_tether_display_starup_warning"

    goto :goto_0
.end method

.method private getTetherMsgValue()I
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "value":I
    iget v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    if-nez v1, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_2
    iget v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setResultAndFinish(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/motorola/settings/TetherDisclaimer;->setResult(I)V

    .line 209
    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->finish()V

    .line 210
    return-void
.end method


# virtual methods
.method public displayStartupNotice()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 141
    const/4 v9, 0x0

    iput v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherResult:I

    .line 143
    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->tetherWarningNeeded()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 144
    const-string v9, "TetherDisclaimer"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 145
    const-string v9, "TetherDisclaimer"

    const-string v10, "displayStartupNotice : showing dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/motorola/settings/TetherDisclaimer;->getTetherMsgKey()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/motorola/settings/TetherDisclaimer;->getTetherMsgValue()I

    move-result v6

    .line 149
    .local v6, "value":I
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    .line 150
    iget v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    if-nez v9, :cond_1

    const v2, 0x7f0400dd

    .line 152
    .local v2, "layoutResId":I
    :goto_0
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 154
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f0f01b5

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 155
    .local v4, "textView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 157
    const v9, 0x7f0f01b6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    move-object v0, v9

    check-cast v0, Landroid/widget/CheckBox;

    .line 158
    .local v0, "c":Landroid/widget/CheckBox;
    iget-boolean v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    new-instance v8, Lcom/motorola/settings/TetherDisclaimer$1;

    invoke-direct {v8, p0, v1}, Lcom/motorola/settings/TetherDisclaimer$1;-><init>(Lcom/motorola/settings/TetherDisclaimer;Ljava/lang/String;)V

    .line 174
    .local v8, "warningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Lcom/motorola/settings/TetherDisclaimer$2;

    invoke-direct {v9, p0, v7}, Lcom/motorola/settings/TetherDisclaimer$2;-><init>(Lcom/motorola/settings/TetherDisclaimer;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    new-instance v10, Lcom/motorola/settings/TetherDisclaimer$3;

    invoke-direct {v10, p0}, Lcom/motorola/settings/TetherDisclaimer$3;-><init>(Lcom/motorola/settings/TetherDisclaimer;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "ic_dialog_custom_alert"

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, "resID":I
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 191
    iget v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    if-nez v9, :cond_2

    const v5, 0x7f090023

    .line 193
    .local v5, "titleResId":I
    :goto_1
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 195
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09001f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v13, v10, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 197
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 198
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    const/4 v10, -0x2

    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090179

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 200
    iget-object v9, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 205
    .end local v0    # "c":Landroid/widget/CheckBox;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "layoutResId":I
    .end local v3    # "resID":I
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "titleResId":I
    .end local v6    # "value":I
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "warningListener":Landroid/content/DialogInterface$OnClickListener;
    :goto_2
    return-void

    .line 150
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v6    # "value":I
    :cond_1
    const v2, 0x7f0400c3

    goto/16 :goto_0

    .line 191
    .restart local v0    # "c":Landroid/widget/CheckBox;
    .restart local v2    # "layoutResId":I
    .restart local v3    # "resID":I
    .restart local v4    # "textView":Landroid/widget/TextView;
    .restart local v7    # "view":Landroid/view/View;
    .restart local v8    # "warningListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    const v5, 0x7f090024

    goto :goto_1

    .line 203
    .end local v0    # "c":Landroid/widget/CheckBox;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "layoutResId":I
    .end local v3    # "resID":I
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v6    # "value":I
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "warningListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    invoke-direct {p0, v13}, Lcom/motorola/settings/TetherDisclaimer;->setResultAndFinish(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string v1, "CHECKBOX_STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "tetherChoice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    .line 69
    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->displayStartupNotice()V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/settings/TetherDisclaimer;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v0, "CHECKBOX_STATE"

    iget-boolean v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 116
    const-string v1, "TetherDisclaimer"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "TetherDisclaimer"

    const-string v2, "in onUserLeaveHint, finishing the activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget v1, p0, Lcom/motorola/settings/TetherDisclaimer;->mTetherType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 120
    const-string v1, "bt_tether_setting"

    invoke-virtual {p0, v1, v3}, Lcom/motorola/settings/TetherDisclaimer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "checked"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public tetherWarningNeeded()Z
    .locals 5

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/motorola/settings/TetherDisclaimer;->getTetherMsgKey()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/motorola/settings/TetherDisclaimer;->getTetherMsgValue()I

    move-result v1

    .line 83
    .local v1, "value":I
    const-string v2, "TetherDisclaimer"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "TetherDisclaimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tetherWarningNeeded : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/settings/TetherDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

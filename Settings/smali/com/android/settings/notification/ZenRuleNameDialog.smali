.class public abstract Lcom/android/settings/notification/ZenRuleNameDialog;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mEditText:Landroid/widget/EditText;

.field private final mExistingNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ruleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "existingNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400f8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0f00b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090a93

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09017c

    new-instance v5, Lcom/android/settings/notification/ZenRuleNameDialog$1;

    invoke-direct {v5, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090179

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/notification/ZenRuleNameDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$2;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mExistingNames:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "existingName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mExistingNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "existingName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenRuleNameDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->trimmedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenRuleNameDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->updatePositiveButton()V

    return-void
.end method

.method private trimmedText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePositiveButton()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->trimmedText()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mExistingNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .local v1, "validName":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .end local v1    # "validName":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract onOk(Ljava/lang/String;)V
.end method

.method public show()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->updatePositiveButton()V

    return-void
.end method

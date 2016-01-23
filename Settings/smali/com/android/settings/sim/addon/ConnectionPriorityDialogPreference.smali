.class public Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ConnectionPriorityDialogPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mRadio:[Landroid/widget/RadioButton;

.field private mSelectedIndex:I

.field private mSummaryEntries:[Ljava/lang/CharSequence;

.field private mSummaryText:[Landroid/widget/TextView;

.field private mText:[Landroid/widget/TextView;

.field private mView:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-array v1, v2, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryEntries:[Ljava/lang/CharSequence;

    .line 26
    new-array v1, v2, [Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    .line 27
    new-array v1, v2, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mText:[Landroid/widget/TextView;

    .line 28
    new-array v1, v2, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryText:[Landroid/widget/TextView;

    .line 29
    new-array v1, v2, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mView:[Landroid/view/View;

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    .line 34
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    const v0, 0x7f0f0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 51
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    const v0, 0x7f0f0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v3

    .line 52
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mText:[Landroid/widget/TextView;

    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 53
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mText:[Landroid/widget/TextView;

    const v0, 0x7f0f0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 54
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryText:[Landroid/widget/TextView;

    const v0, 0x7f0f0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 55
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryText:[Landroid/widget/TextView;

    const v0, 0x7f0f0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 56
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mView:[Landroid/view/View;

    const v1, 0x7f0f0110

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 57
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mView:[Landroid/view/View;

    const v1, 0x7f0f0115

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 59
    iget v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 61
    iput v2, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    .line 67
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    if-eq v0, v4, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    iget v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mView:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mView:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 63
    :cond_2
    iput v3, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mView:[Landroid/view/View;

    aget-object v1, v1, v3

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v1, v1, v3

    if-ne p1, v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    if-eqz v1, :cond_3

    .line 83
    iput v3, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    .line 84
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    iget v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 94
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    :cond_2
    return-void

    .line 87
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mView:[Landroid/view/View;

    aget-object v1, v1, v2

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_1

    :cond_4
    iget v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    if-eq v1, v2, :cond_1

    .line 88
    iput v2, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    .line 89
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mRadio:[Landroid/widget/RadioButton;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    iget v1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 44
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    return-void
.end method

.method public setSummaryEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summaryEntries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSummaryEntries:[Ljava/lang/CharSequence;

    .line 100
    return-void
.end method

.method public setValueIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->mSelectedIndex:I

    .line 113
    return-void
.end method

.class public Lcom/android/settings/accessibility/EdgeTypePreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "EdgeTypePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValues([I)V

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setTitles([Ljava/lang/CharSequence;)V

    const v1, 0x7f04004f

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setDialogLayoutResource(I)V

    const v1, 0x7f040097

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const v5, 0x7f0f009c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    .local v1, "preview":Lcom/android/internal/widget/SubtitleView;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .local v0, "density":F
    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v5, v0

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/EdgeTypePreference;->getValueAt(I)I

    move-result v4

    .local v4, "value":I
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/EdgeTypePreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "title":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    const v5, 0x7f0f0046

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

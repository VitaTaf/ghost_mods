.class public Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2149
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2162
    :goto_0
    return-void

    .line 2155
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2156
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2158
    new-instance v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 2159
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2160
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2161
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 2167
    .local v11, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/settings/DataUsageSummary;

    .line 2168
    .local v10, "target":Lcom/android/settings/DataUsageSummary;
    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v10}, Lcom/android/settings/DataUsageSummary;->access$3400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v8

    .line 2170
    .local v8, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2171
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 2173
    .local v12, "dialogInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040036

    const/4 v4, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 2174
    .local v17, "view":Landroid/view/View;
    const v3, 0x7f0f006a

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    .line 2176
    .local v5, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "template"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkTemplate;

    .line 2177
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v8, v9}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v18

    .line 2178
    .local v18, "warningBytes":J
    invoke-virtual {v8, v9}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v14

    .line 2181
    .local v14, "limitBytes":J
    const v3, 0x7f0f006b

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2184
    .local v13, "unit":Landroid/widget/TextView;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isShowingSizeInGB(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2186
    const-wide/32 v6, 0x40000000

    .line 2187
    .local v6, "unit_in_bytes":J
    const v3, 0x1040071

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2197
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2198
    const-wide/16 v20, -0x1

    cmp-long v3, v14, v20

    if-eqz v3, :cond_3

    .line 2200
    div-long v20, v14, v6

    move-wide/from16 v0, v20

    long-to-int v3, v0

    add-int/lit8 v16, v3, -0x1

    .line 2201
    .local v16, "value":I
    if-gez v16, :cond_0

    .line 2202
    const/16 v16, 0x0

    .line 2204
    :cond_0
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2210
    .end local v16    # "value":I
    :goto_1
    div-long v20, v18, v6

    move-wide/from16 v0, v20

    long-to-int v3, v0

    invoke-virtual {v5, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2212
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2214
    const v3, 0x7f090897

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2215
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2217
    const v20, 0x7f090896

    new-instance v3, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;JLcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2232
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 2189
    .end local v6    # "unit_in_bytes":J
    :cond_1
    const-wide/32 v6, 0x100000

    .line 2190
    .restart local v6    # "unit_in_bytes":J
    const v3, 0x1040070

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2193
    .end local v6    # "unit_in_bytes":J
    :cond_2
    const-wide/32 v6, 0x100000

    .restart local v6    # "unit_in_bytes":J
    goto :goto_0

    .line 2207
    :cond_3
    const v3, 0x7fffffff

    invoke-virtual {v5, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1
.end method

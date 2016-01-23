.class public Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2239
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2252
    :goto_0
    return-void

    .line 2245
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2246
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2248
    new-instance v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;-><init>()V

    .line 2249
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2250
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2251
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2257
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/android/settings/DataUsageSummary;

    .line 2258
    .local v12, "target":Lcom/android/settings/DataUsageSummary;
    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v12}, Lcom/android/settings/DataUsageSummary;->access$3400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v10

    .line 2260
    .local v10, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-direct {v13, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2261
    .local v13, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 2263
    .local v14, "dialogInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040036

    const/4 v3, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 2264
    .local v19, "view":Landroid/view/View;
    const v2, 0x7f0f006a

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 2266
    .local v4, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkTemplate;

    .line 2267
    .local v11, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v10, v11}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v8

    .line 2268
    .local v8, "warningBytes":J
    invoke-virtual {v10, v11}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v16

    .line 2271
    .local v16, "limitBytes":J
    const v2, 0x7f0f006b

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2274
    .local v15, "unit":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isShowingSizeInGB(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2276
    const-wide/32 v5, 0x40000000

    .line 2277
    .local v5, "unit_in_bytes":J
    const v2, 0x1040071

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2278
    const v2, 0x1fffff

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2290
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_3

    .line 2291
    div-long v2, v8, v5

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2296
    :goto_1
    div-long v2, v16, v5

    long-to-int v0, v2

    move/from16 v18, v0

    .line 2297
    .local v18, "value":I
    move/from16 v0, v18

    int-to-long v2, v0

    div-long v20, v8, v5

    cmp-long v2, v2, v20

    if-gtz v2, :cond_0

    .line 2298
    div-long v2, v8, v5

    long-to-int v2, v2

    add-int/lit8 v18, v2, 0x1

    .line 2300
    :cond_0
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2302
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2304
    const v2, 0x7f090898

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2305
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2307
    const v20, 0x7f090896

    new-instance v2, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;JLandroid/content/Context;JLcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    move/from16 v0, v20

    invoke-virtual {v13, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2331
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 2280
    .end local v5    # "unit_in_bytes":J
    .end local v18    # "value":I
    :cond_1
    const-wide/32 v5, 0x100000

    .line 2281
    .restart local v5    # "unit_in_bytes":J
    const v2, 0x1040070

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2282
    const v2, 0x7fffffff

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 2285
    .end local v5    # "unit_in_bytes":J
    :cond_2
    const-wide/32 v5, 0x100000

    .line 2286
    .restart local v5    # "unit_in_bytes":J
    const v2, 0x7fffffff

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 2293
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_1
.end method

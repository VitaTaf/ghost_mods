.class public Lcom/android/settings/applications/AppPermissionSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppPermissionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppPermissionSettings$PremiumSmsSelectionListener;
    }
.end annotation


# instance fields
.field private mRootView:Landroid/view/View;

.field private mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionSettings;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionSettings;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSummary(Lcom/android/settings/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "appEntry"    # Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v0, "asp":Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    .local v1, "count":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10000d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppPermissionSettings;->mSmsManager:Lcom/android/internal/telephony/ISms;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0400f6

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "allDetails":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/android/settings/applications/AppPermissionSettings;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method protected refreshUi()Z
    .locals 24

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppPermissionSettings;->retrieveAppEntry()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0f00c4

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .local v10, "permsView":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppPermissionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v6, "asp":Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppPermissionSettings;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v13

    .local v13, "premiumSmsPermission":I
    invoke-virtual {v6}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v19

    if-gtz v19, :cond_0

    if-eqz v13, :cond_1

    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const v19, 0x7f0f00c5

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .local v15, "securityBillingDesc":Landroid/widget/TextView;
    const v19, 0x7f0f00c6

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .local v16, "securityBillingList":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_2

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v19, 0x7f0f00c7

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .local v18, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppPermissionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f0b0062

    const v21, 0x1090008

    invoke-static/range {v19 .. v21}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v19, 0x1090009

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    add-int/lit8 v19, v13, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v19, Lcom/android/settings/applications/AppPermissionSettings$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/android/settings/applications/AppPermissionSettings$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v18    # "spinner":Landroid/widget/Spinner;
    :goto_1
    invoke-virtual {v6}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v19

    if-lez v19, :cond_5

    const v19, 0x7f0f00c9

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .local v17, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v6}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .local v9, "packages":[Ljava/lang/String;
    if-eqz v9, :cond_5

    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    aget-object v11, v9, v8

    .local v11, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v8    # "i":I
    .end local v9    # "packages":[Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v15    # "securityBillingDesc":Landroid/widget/TextView;
    .end local v16    # "securityBillingList":Landroid/widget/LinearLayout;
    .end local v17    # "securityList":Landroid/widget/LinearLayout;
    :cond_1
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v15    # "securityBillingDesc":Landroid/widget/TextView;
    .restart local v16    # "securityBillingList":Landroid/widget/LinearLayout;
    :cond_2
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v19, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .restart local v8    # "i":I
    .restart local v9    # "packages":[Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v17    # "securityList":Landroid/widget/LinearLayout;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v4    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v19

    goto :goto_3

    .end local v11    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    if-lez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppPermissionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .local v14, "res":Landroid/content/res/Resources;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_6

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "appListStr":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0f00c8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, "descr":Landroid/widget/TextView;
    const v19, 0x7f090568

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppPermissionSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2    # "N":I
    .end local v5    # "appListStr":Ljava/lang/String;
    .end local v7    # "descr":Landroid/widget/TextView;
    .end local v8    # "i":I
    .end local v9    # "packages":[Ljava/lang/String;
    .end local v12    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v17    # "securityList":Landroid/widget/LinearLayout;
    :cond_5
    const/16 v19, 0x1

    return v19

    .restart local v2    # "N":I
    .restart local v8    # "i":I
    .restart local v9    # "packages":[Ljava/lang/String;
    .restart local v12    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v14    # "res":Landroid/content/res/Resources;
    .restart local v17    # "securityList":Landroid/widget/LinearLayout;
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_7

    const v19, 0x7f090569

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "appListStr":Ljava/lang/String;
    goto :goto_4

    .end local v5    # "appListStr":Ljava/lang/String;
    :cond_7
    add-int/lit8 v19, v2, -0x2

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "appListStr":Ljava/lang/String;
    add-int/lit8 v8, v2, -0x3

    :goto_5
    if-ltz v8, :cond_9

    if-nez v8, :cond_8

    const v19, 0x7f09056b

    :goto_6
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_8
    const v19, 0x7f09056c

    goto :goto_6

    :cond_9
    const v19, 0x7f09056a

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v5, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v22, v2, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4
.end method

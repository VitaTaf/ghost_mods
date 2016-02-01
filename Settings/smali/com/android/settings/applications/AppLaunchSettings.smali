.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Lcom/android/settings/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "appEntry"    # Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .param p1, "usbManager"    # Landroid/hardware/usb/IUsbManager;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p2, v1}, Lcom/android/settings/applications/AppLaunchSettings;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v1}, Lcom/android/settings/applications/AppLaunchSettings;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .local v0, "hasPreferred":Z
    :goto_0
    if-eqz v0, :cond_2

    const v2, 0x7f090aae

    :goto_1
    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "hasPreferred":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "hasPreferred":Z
    :cond_2
    const v2, 0x7f090aaf

    goto :goto_1
.end method

.method private static hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "usbManager"    # Landroid/hardware/usb/IUsbManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {p0, p1, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/applications/AppLaunchSettings;->TAG:Ljava/lang/String;

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    const v0, 0x7f090529

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090540

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
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

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mRootView:Landroid/view/View;

    const v4, 0x7f0f00be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mRootView:Landroid/view/View;

    const v4, 0x7f0f00bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "autoLaunchView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppLaunchSettings;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .end local v0    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v1    # "autoLaunchView":Landroid/widget/TextView;
    :cond_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/applications/AppLaunchSettings;->TAG:Ljava/lang/String;

    const-string v4, "mUsbManager.clearDefaults"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0400f4

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

    const v2, 0x7f0f00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mActivitiesButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method protected refreshUi()Z
    .locals 14

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->retrieveAppEntry()Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v11, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v6

    .local v6, "hasBindAppWidgetPermission":Z
    iget-object v10, p0, Lcom/android/settings/applications/AppLaunchSettings;->mRootView:Landroid/view/View;

    const v11, 0x7f0f00be

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/settings/applications/AppLaunchSettings;->mRootView:Landroid/view/View;

    const v11, 0x7f0f00bf

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "autoLaunchView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/settings/applications/AppLaunchSettings;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/applications/AppLaunchSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v11, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/settings/applications/AppLaunchSettings;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v2, 0x1

    .local v2, "autoLaunchEnabled":Z
    :goto_0
    if-nez v2, :cond_2

    if-nez v6, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/AppLaunchSettings;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_1
    const/4 v10, 0x1

    return v10

    .end local v2    # "autoLaunchEnabled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "autoLaunchEnabled":Z
    :cond_2
    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    .local v9, "useBullets":Z
    :goto_2
    if-eqz v6, :cond_8

    const v10, 0x7f09052a

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    const/4 v8, 0x0

    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .local v5, "bulletIndent":I
    if-eqz v2, :cond_4

    const v10, 0x7f09053e

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/AppLaunchSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v7, "s":Landroid/text/SpannableString;
    if-eqz v9, :cond_3

    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v5}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    if-nez v8, :cond_9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v1    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v7    # "s":Landroid/text/SpannableString;
    :cond_4
    :goto_4
    if-eqz v6, :cond_6

    const v10, 0x7f09053f

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/AppLaunchSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v7    # "s":Landroid/text/SpannableString;
    if-eqz v9, :cond_5

    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v5}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    if-nez v8, :cond_a

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v0    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v7    # "s":Landroid/text/SpannableString;
    :cond_6
    :goto_5
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/applications/AppLaunchSettings;->mActivitiesButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/applications/AppLaunchSettings;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .end local v5    # "bulletIndent":I
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "useBullets":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    .restart local v9    # "useBullets":Z
    :cond_8
    const v10, 0x7f090529

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .restart local v1    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v5    # "bulletIndent":I
    .restart local v7    # "s":Landroid/text/SpannableString;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_9
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_4

    .end local v1    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v0    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_a
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_5
.end method

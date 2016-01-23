.class public Lcom/motorola/settings/UsageManagerFragment;
.super Landroid/app/Fragment;
.source "UsageManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v5, 0x7f0400cd

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 29
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/motorola/settings/UsageManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f09085a

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 31
    .local v3, "dataTab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f0906b3

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 32
    .local v2, "batteryTab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f09051d

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 33
    .local v1, "appsTab":Landroid/app/ActionBar$Tab;
    new-instance v5, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;

    new-instance v6, Lcom/android/settings/DataUsageSummary;

    invoke-direct {v6}, Lcom/android/settings/DataUsageSummary;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;-><init>(Lcom/motorola/settings/UsageManagerFragment;Landroid/app/Fragment;)V

    invoke-virtual {v3, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 34
    new-instance v5, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;

    new-instance v6, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;-><init>(Lcom/motorola/settings/UsageManagerFragment;Landroid/app/Fragment;)V

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 35
    new-instance v5, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;

    new-instance v6, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v6}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;-><init>(Lcom/motorola/settings/UsageManagerFragment;Landroid/app/Fragment;)V

    invoke-virtual {v1, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 36
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 37
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 39
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 40
    return-object v4
.end method

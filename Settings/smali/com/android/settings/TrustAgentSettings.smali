.class public Lcom/android/settings/TrustAgentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustAgentSettings$AgentInfo;
    }
.end annotation


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    return-void
.end method

.method private loadActiveAgents()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .local v0, "activeTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private saveActiveAgents()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;)V

    return-void
.end method

.method private updateAgents()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->findAvailableTrustAgents()Landroid/util/ArrayMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    :cond_0
    iget-object v6, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v6, :cond_1

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->loadActiveAgents()V

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "trust_agents"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .local v1, "category":Landroid/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v6, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v6, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;

    .local v0, "agent":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    new-instance v5, Landroid/preference/SwitchPreference;

    invoke-direct {v5, v2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .local v5, "preference":Landroid/preference/SwitchPreference;
    iput-object v5, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v6, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v7, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "agent":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    .end local v5    # "preference":Landroid/preference/SwitchPreference;
    :cond_2
    return-void
.end method


# virtual methods
.method findAvailableTrustAgents()Landroid/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.service.trust.TrustAgentService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, "trustAgentIntent":Landroid/content/Intent;
    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .local v1, "agents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/settings/TrustAgentSettings$AgentInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6, v5}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .local v4, "name":Landroid/content/ComponentName;
    new-instance v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;

    invoke-direct {v0}, Lcom/android/settings/TrustAgentSettings$AgentInfo;-><init>()V

    .local v0, "agentInfo":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "agentInfo":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    .end local v4    # "name":Landroid/content/ComponentName;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustAgentSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;

    .local v0, "agent":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    iget-object v3, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    if-ne v3, p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->saveActiveAgents()V

    const/4 v3, 0x1

    .end local v0    # "agent":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :goto_2
    return v3

    .restart local v0    # "agent":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "agent":Lcom/android/settings/TrustAgentSettings$AgentInfo;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->updateAgents()V

    return-void
.end method

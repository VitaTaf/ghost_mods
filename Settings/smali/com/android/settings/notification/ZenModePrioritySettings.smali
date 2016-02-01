.class public Lcom/android/settings/notification/ZenModePrioritySettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# instance fields
.field private mCalls:Landroid/preference/SwitchPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mMessages:Landroid/preference/SwitchPreference;

.field private mReminders:Landroid/preference/SwitchPreference;

.field private mStarred:Lcom/android/settings/DropDownPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModePrioritySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModePrioritySettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method private updateControls()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mStarred:Lcom/android/settings/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->updateStarredEnabled()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return-void
.end method

.method private updateStarredEnabled()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mStarred:Lcom/android/settings/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$1;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "events"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$2;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$3;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "calls"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$4;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mStarred:Lcom/android/settings/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mStarred:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f090a06

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mStarred:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f090a07

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mStarred:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f090a08

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mStarred:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$5;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->updateControls()V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->updateControls()V

    return-void
.end method

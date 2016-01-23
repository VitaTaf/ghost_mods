.class public Lcom/android/settings/TestingSettings;
.super Landroid/preference/PreferenceActivity;
.source "TestingSettings.java"


# instance fields
.field private mCmasTestAlerts:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f06003f

    invoke-virtual {p0, v1}, Lcom/android/settings/TestingSettings;->addPreferencesFromResource(I)V

    .line 37
    const-string v1, "cmas_test_alerts"

    invoke-virtual {p0, v1}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/TestingSettings;->mCmasTestAlerts:Landroid/preference/PreferenceScreen;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 39
    .local v0, "isCmasTestAlertsEnabled":Z
    iget-object v1, p0, Lcom/android/settings/TestingSettings;->mCmasTestAlerts:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TestingSettings;->mCmasTestAlerts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.extensions.settings.DYNAMIC_TESTING_INFO_SCREEN_PREFERENCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/motorola/extensions/DynamicPreferences;->addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

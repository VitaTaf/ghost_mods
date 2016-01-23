.class Lcom/android/settings/PrivacySettings$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 189
    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    .line 211
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v3

    .line 192
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 193
    .local v1, "nextValue":Z
    const/4 v2, 0x0

    .line 194
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$100(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_3

    .line 195
    if-nez v1, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)V

    :cond_1
    :goto_1
    move v3, v2

    .line 211
    goto :goto_0

    .line 200
    :cond_2
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V
    invoke-static {v4, v3}, Lcom/android/settings/PrivacySettings;->access$300(Lcom/android/settings/PrivacySettings;Z)V

    .line 201
    const/4 v2, 0x1

    goto :goto_1

    .line 203
    :cond_3
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$400(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 205
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$500(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v2, 0x1

    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$400(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

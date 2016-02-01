.class public Lcom/android/settings/notification/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# static fields
.field private static final DAY_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAutomationSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->showRule(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private computeContiguousDayRanges([I)Ljava/lang/String;
    .locals 13
    .param p1, "days"    # [I

    .prologue
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .local v2, "daySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eqz p1, :cond_0

    array-length v8, p1

    if-ge v4, v8, :cond_0

    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f090a9b

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    array-length v0, v8

    .local v0, "N":I
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v8

    if-ne v8, v0, :cond_3

    const v8, 0x7f090a9c

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .local v5, "rt":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_1

    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    aget v6, v8, v4

    .local v6, "startDay":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "active":Z
    if-nez v1, :cond_4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .local v3, "end":I
    :goto_4
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v9, v4, v3

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v9, v0

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    if-nez v4, :cond_6

    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int/lit8 v9, v0, -0x1

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    if-nez v3, :cond_8

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "v":Ljava/lang/String;
    :goto_5
    if-nez v5, :cond_9

    move-object v5, v7

    .end local v7    # "v":Ljava/lang/String;
    :cond_7
    :goto_6
    add-int/2addr v4, v3

    goto :goto_3

    :cond_8
    const v8, 0x7f090a9d

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v12, v4, v3

    rem-int/2addr v12, v0

    aget v11, v11, v12

    invoke-direct {p0, v11}, Lcom/android/settings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .restart local v7    # "v":Ljava/lang/String;
    :cond_9
    const v8, 0x7f090a01

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6
.end method

.method private computeRuleSummary(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 11
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v6, :cond_1

    :cond_0
    const v6, 0x7f090a1a

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    .local v3, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-nez v3, :cond_2

    const v6, 0x7f090a19

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeContiguousDayRanges([I)Ljava/lang/String;

    move-result-object v0

    .local v0, "days":Ljava/lang/String;
    iget v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v7, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, v6, v7}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getTime(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "start":Ljava/lang/String;
    iget v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v7, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, v6, v7}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getTime(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "end":Ljava/lang/String;
    const v6, 0x7f090a9e

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v1, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "time":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v6, v7}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "mode":Ljava/lang/String;
    const v6, 0x7f090a99

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    aput-object v5, v7, v9

    aput-object v2, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "zenMode"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f090a91

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0909c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0909ca

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private dayString(I)Ljava/lang/String;
    .locals 2
    .param p1, "day"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sget-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTime(II)Ljava/lang/String;
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAddRuleDialog()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->getAutomaticRuleNames()Landroid/util/ArraySet;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->show()V

    return-void
.end method

.method private showRule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "ruleName"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rule_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateControls()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .local v3, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .local v2, "p":Landroid/preference/Preference;
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeRuleSummary(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    new-instance v5, Lcom/android/settings/notification/ZenModeAutomationSettings$2;

    invoke-direct {v5, p0, v1, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings$2;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->setHasOptionsMenu(Z)V

    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v0, 0x7f110008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00b8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V

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
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V

    return-void
.end method

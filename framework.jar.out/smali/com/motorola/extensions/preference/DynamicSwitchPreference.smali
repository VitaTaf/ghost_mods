.class public Lcom/motorola/extensions/preference/DynamicSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "DynamicSwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
.implements Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$DelegatorHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 34
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 39
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 45
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0, p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 51
    new-instance v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;-><init>(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 53
    return-void
.end method


# virtual methods
.method public getDelegator()Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 69
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 70
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onBindView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->refresh()V

    .line 81
    return-void
.end method

.method public setAutoRefresh(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "autoRefresh"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setAutoRefresh(Landroid/net/Uri;Z)V

    .line 75
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setIntent(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

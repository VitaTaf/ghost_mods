.class public Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "DynamicCheckboxPreference.java"

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
    const-class v0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    invoke-virtual {p0, p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;-><init>(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    return-void
.end method


# virtual methods
.method public getDelegator()Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->refresh()V

    return-void
.end method

.method public setAutoRefresh(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "autoRefresh"    # Z

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setAutoRefresh(Landroid/net/Uri;Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

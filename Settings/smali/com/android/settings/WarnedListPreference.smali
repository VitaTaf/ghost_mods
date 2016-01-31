.class public Lcom/android/settings/WarnedListPreference;
.super Landroid/preference/ListPreference;
.source "WarnedListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    return-void
.end method

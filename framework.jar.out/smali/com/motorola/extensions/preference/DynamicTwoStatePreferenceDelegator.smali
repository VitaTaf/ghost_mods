.class public Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;
.super Ljava/lang/Object;
.source "DynamicTwoStatePreferenceDelegator.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$DelegatorHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoRefresh:Z

.field mContext:Landroid/content/Context;

.field private mInterceptor:Z

.field private mInterceptorIntent:Landroid/content/Intent;

.field private mMaxLines:I

.field private mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

.field private mNewValue:Ljava/lang/Boolean;

.field private mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

.field private mOffInterceptor:Z

.field private mOnInterceptor:Z

.field private mPreferenceUri:Landroid/net/Uri;

.field private mTwoStatePreference:Landroid/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tsp"    # Landroid/preference/TwoStatePreference;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMaxLines:I

    iput-object p2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkObserver()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-direct {v0, v1, v2}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;-><init>(Landroid/content/Context;Landroid/preference/MotoPreferenceManager;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->start(Landroid/net/Uri;Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;)V

    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private persistNewValue()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "values":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "value"

    iget-object v7, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "rows":I
    if-lez v2, :cond_1

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "rows":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "rows":I
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    move v4, v5

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "rows":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->TAG:Ljava/lang/String;

    const-string v6, "Error on update"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/MotoPreferenceManager;->unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->persistNewValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    invoke-static {p1}, Landroid/preference/MotoPreferenceManager;->getInstance(Landroid/preference/PreferenceManager;)Landroid/preference/MotoPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->checkObserver()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "title":Landroid/widget/TextView;
    iget v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMaxLines:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    iput-object p2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptorIntent:Landroid/content/Intent;

    .local v3, "in":Landroid/content/Intent;
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptor:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOnInterceptor:Z

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOffInterceptor:Z

    if-eqz v6, :cond_3

    :cond_1
    const-string/jumbo v6, "value"

    iget-object v7, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x10000001

    and-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v6, p0}, Landroid/preference/MotoPreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .local v4, "reqCode":I
    :try_start_0
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v6}, Landroid/preference/MotoPreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v2

    .local v2, "f":Landroid/app/Fragment;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v3, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v2    # "f":Landroid/app/Fragment;
    .end local v4    # "reqCode":I
    :goto_0
    return v5

    .restart local v2    # "f":Landroid/app/Fragment;
    .restart local v4    # "reqCode":I
    :cond_2
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "a":Landroid/app/Activity;
    .end local v2    # "f":Landroid/app/Fragment;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->TAG:Ljava/lang/String;

    const-string v7, "Failed to launch activity: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onActivityResult(IILandroid/content/Intent;)Z

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040484

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "reqCode":I
    :cond_3
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->persistNewValue()Z

    move-result v5

    goto :goto_0
.end method

.method public refresh()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "enabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .local v7, "index":I
    if-ltz v7, :cond_2

    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v9

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_2
    const-string/jumbo v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, "value":I
    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    if-eqz v8, :cond_5

    move v1, v9

    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "index":I
    .end local v8    # "value":I
    :cond_3
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "index":I
    :cond_4
    move v1, v10

    goto :goto_1

    .restart local v8    # "value":I
    :cond_5
    move v1, v10

    goto :goto_2

    .end local v7    # "index":I
    .end local v8    # "value":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public setAutoRefresh(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "autoRefresh"    # Z

    .prologue
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mAutoRefresh:Z

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    invoke-virtual {v0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    :cond_0
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->checkObserver()V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptorIntent:Landroid/content/Intent;

    return-void
.end method

.method public setInterceptor(Z)V
    .locals 0
    .param p1, "interceptor"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptor:Z

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    iput p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMaxLines:I

    return-void
.end method

.method public setOffInterceptor(Z)V
    .locals 0
    .param p1, "offInterceptor"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOffInterceptor:Z

    return-void
.end method

.method public setOnInterceptor(Z)V
    .locals 0
    .param p1, "onInterceptor"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOnInterceptor:Z

    return-void
.end method

.method public setPreferenceDataUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    return-void
.end method

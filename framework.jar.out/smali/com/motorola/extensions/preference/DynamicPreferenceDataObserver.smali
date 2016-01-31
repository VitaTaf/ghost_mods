.class public Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;
.super Ljava/lang/Object;
.source "DynamicPreferenceDataObserver.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;,
        Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

.field private mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/MotoPreferenceManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceManager"    # Landroid/preference/MotoPreferenceManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    return-void
.end method


# virtual methods
.method public onActivityDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->stop()V

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "listen"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_0
    return-void
.end method

.method public start(Landroid/net/Uri;Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "onAutoReferesh"    # Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->stop()V

    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p2}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;-><init>(Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;Landroid/os/Handler;Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;

    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/MotoPreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/MotoPreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    :cond_0
    return-void
.end method

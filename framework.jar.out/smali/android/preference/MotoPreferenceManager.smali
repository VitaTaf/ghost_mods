.class public Landroid/preference/MotoPreferenceManager;
.super Ljava/lang/Object;
.source "MotoPreferenceManager.java"


# instance fields
.field private final mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method private constructor <init>(Landroid/preference/PreferenceManager;)V
    .locals 0
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-void
.end method

.method public static getInstance(Landroid/preference/PreferenceManager;)Landroid/preference/MotoPreferenceManager;
    .locals 2
    .param p0, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requires PreferenceManager instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/preference/MotoPreferenceManager;

    invoke-direct {v0, p0}, Landroid/preference/MotoPreferenceManager;-><init>(Landroid/preference/PreferenceManager;)V

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Landroid/preference/PreferenceFragment;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v0

    return-object v0
.end method

.method public registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    :cond_0
    return-void
.end method

.method public registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    :cond_0
    return-void
.end method

.method public registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    :cond_0
    return-void
.end method

.method public unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    :cond_0
    return-void
.end method

.method public unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    :cond_0
    return-void
.end method

.method public unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    :cond_0
    return-void
.end method

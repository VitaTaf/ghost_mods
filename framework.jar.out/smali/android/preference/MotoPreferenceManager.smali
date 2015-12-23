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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/preference/PreferenceManager;)Landroid/preference/MotoPreferenceManager;
    .locals 2
    .param p0, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requires PreferenceManager instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    new-instance v0, Landroid/preference/MotoPreferenceManager;

    invoke-direct {v0, p0}, Landroid/preference/MotoPreferenceManager;-><init>(Landroid/preference/PreferenceManager;)V

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Landroid/preference/PreferenceFragment;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v0

    return-object v0
.end method

.method public registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 74
    :cond_0
    return-void
.end method

.method public registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 44
    :cond_0
    return-void
.end method

.method public registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 59
    :cond_0
    return-void
.end method

.method public unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method public unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method public unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Landroid/preference/MotoPreferenceManager;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 66
    :cond_0
    return-void
.end method

.class public Lcom/android/nfc/NfcRootActivity;
.super Landroid/app/Activity;
.source "NfcRootActivity.java"


# static fields
.field static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "launchIntent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string v2, "launchIntent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 36
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    .line 44
    return-void

    .line 39
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

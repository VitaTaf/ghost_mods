.class Lcom/android/settings/accounts/AccountPreferenceBase$1$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceBase$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountPreferenceBase$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceBase$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncUpdatePending:Z
    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->access$002(Lcom/android/settings/accounts/AccountPreferenceBase;Z)Z

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceBase$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    return-void
.end method

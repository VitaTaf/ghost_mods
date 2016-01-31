.class public Lcom/motorola/settings/accounts/MotoAccountsHelper;
.super Ljava/lang/Object;
.source "MotoAccountsHelper.java"


# static fields
.field private static SYSTEM_APP_PATH:Ljava/lang/String;

.field private static VENDOR_APP_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "/system/app"

    sput-object v0, Lcom/motorola/settings/accounts/MotoAccountsHelper;->SYSTEM_APP_PATH:Ljava/lang/String;

    const-string v0, "/vendor/app"

    sput-object v0, Lcom/motorola/settings/accounts/MotoAccountsHelper;->VENDOR_APP_PATH:Ljava/lang/String;

    return-void
.end method

.method public static getAccountDisplayName(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v1

    iget-object v0, v1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .local v0, "displayName":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static final getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->getInstance(Landroid/content/Context;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    move-result-object v2

    invoke-static {p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->newKey(Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1

    .local v1, "srvInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;>;"
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    .local v0, "authFeat":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    :goto_0
    return-object v0

    .end local v0    # "authFeat":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    :cond_0
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    invoke-direct {v0, p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Ljava/lang/String;)V

    .restart local v0    # "authFeat":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    goto :goto_0
.end method

.method public static final isHidden(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    return v0
.end method

.method public static removeAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeUnneededAuthDescs(Landroid/content/Context;[Landroid/accounts/AuthenticatorDescription;)[Landroid/accounts/AuthenticatorDescription;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authDescs"    # [Landroid/accounts/AuthenticatorDescription;

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "validList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AuthenticatorDescription;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-object v3, p1, v1

    iget-object v0, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .local v0, "accountType":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->isHidden(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v3

    iget-boolean v3, v3, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "accountType":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/AuthenticatorDescription;

    return-object v3
.end method

.method public static syncAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    return v0
.end method

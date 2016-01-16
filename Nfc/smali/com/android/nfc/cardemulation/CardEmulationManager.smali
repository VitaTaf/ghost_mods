.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field final mContext:Landroid/content/Context;

.field final mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field final mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 82
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 83
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 84
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 85
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 87
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 88
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 216
    const-string v3, "payment"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    const-string v3, "CardEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowing defaults for category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return-object v2

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_payment_default_component"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 225
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 226
    .local v1, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object v2, v1

    .line 227
    goto :goto_0

    .line 229
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    .end local v1    # "service":Landroid/content/ComponentName;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "service":Landroid/content/ComponentName;
    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 257
    .local v0, "serviceFound":Z
    if-nez v0, :cond_0

    .line 263
    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onHostCardEmulationActivated()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 96
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    .line 97
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    .line 101
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated()V

    .line 105
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    .line 106
    return-void
.end method

.method public onNfcDisabled()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 123
    return-void
.end method

.method public onNfcEnabled()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 119
    return-void
.end method

.method public onOffHostAidSelected()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 110
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 401
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 402
    return-void
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 395
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 396
    return-void
.end method

.method public onRoutingTableChanged()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onRoutingTableChanged()V

    .line 408
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 137
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 140
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 114
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 115
    return-void
.end method

.method setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    .line 245
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 252
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 250
    :cond_3
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find default service to make default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->setScreenState(I)V

    .line 405
    return-void
.end method

.method verifyDefaults(ILjava/util/List;)V
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 143
    const-string v7, "payment"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 145
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    const-string v7, "CardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v0, :cond_9

    .line 148
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v6

    .line 149
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v6, :cond_0

    const-string v7, "payment"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 150
    :cond_0
    if-nez v6, :cond_3

    .line 151
    const-string v7, "CardEmulationManager"

    const-string v8, "Default payment service unexpectedly removed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 156
    .local v4, "numPaymentServices":I
    const/4 v3, 0x0

    .line 157
    .local v3, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 158
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v7, "payment"

    invoke-virtual {v5, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    .line 152
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_3
    const-string v7, "payment"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    const-string v7, "CardEmulationManager"

    const-string v8, "Default payment service had payment category removed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .restart local v4    # "numPaymentServices":I
    :cond_4
    const-string v7, "CardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of payment services is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-nez v4, :cond_6

    .line 166
    const-string v7, "CardEmulationManager"

    const-string v8, "Default removed, no services left."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v7, "payment"

    invoke-virtual {p0, p1, v11, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 212
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5
    :goto_2
    return-void

    .line 169
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .restart local v4    # "numPaymentServices":I
    .restart local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_6
    if-ne v4, v10, :cond_7

    .line 171
    const-string v7, "CardEmulationManager"

    const-string v8, "Default removed, making remaining service default."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v7, "payment"

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_2

    .line 174
    :cond_7
    if-le v4, v10, :cond_5

    .line 177
    const-string v7, "CardEmulationManager"

    const-string v8, "Default removed, asking user to pick."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v7, "payment"

    invoke-virtual {p0, p1, v11, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 180
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 186
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    :cond_8
    const-string v7, "CardEmulationManager"

    const-string v8, "Default payment service still ok."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_9
    const/4 v4, 0x0

    .line 192
    .restart local v4    # "numPaymentServices":I
    const/4 v3, 0x0

    .line 193
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 194
    .restart local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v7, "payment"

    invoke-virtual {v5, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_3

    .line 199
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_b
    if-le v4, v10, :cond_c

    .line 201
    const-string v7, "CardEmulationManager"

    const-string v8, "No default set, more than one service left."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 202
    :cond_c
    if-ne v4, v10, :cond_d

    .line 204
    const-string v7, "CardEmulationManager"

    const-string v8, "No default set, making single service default."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v7, "payment"

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_2

    .line 209
    :cond_d
    const-string v7, "CardEmulationManager"

    const-string v8, "No default set, last payment service removed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

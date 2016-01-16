.class final Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
.super Landroid/nfc/INfcCardEmulation$Stub;
.source "CardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CardEmulationInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-direct {p0}, Landroid/nfc/INfcCardEmulation$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 338
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 339
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public getServices(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 362
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 363
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 293
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 294
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 280
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 281
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    :goto_0
    return v2

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v3, p1, p3, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 286
    .local v0, "defaultService":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 326
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 327
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 350
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 351
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 354
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 315
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 316
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/PreferredServices;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 304
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 305
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPreferredService(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 370
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const-string v0, "CardEmulationManager"

    const-string v1, "setPreferredService: unknown component."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->registerPreferredForegroundService(Landroid/content/ComponentName;I)Z

    move-result v0

    goto :goto_0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public unsetPreferredService()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->unregisteredPreferredForegroundService(I)Z

    move-result v0

    return v0
.end method

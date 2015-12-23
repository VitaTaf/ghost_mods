.class public final Lcom/nxp/nfc/NxpNfcAdapter;
.super Ljava/lang/Object;
.source "NxpNfcAdapter.java"


# static fields
.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final EXTRA_AID:Ljava/lang/String; = "com.nxp.extra.AID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field private static final TAG:Ljava/lang/String; = "NXPNFC"

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/nfc/NfcAdapter;",
            "Lcom/nxp/nfc/NxpNfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

.field private static sService:Landroid/nfc/INfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static attemptDeadServiceRecovery()V
    .locals 3

    .prologue
    .line 128
    const-string v1, "NXPNFC"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 130
    .local v0, "service":Landroid/nfc/INfcAdapter;
    if-nez v0, :cond_0

    .line 131
    const-string v1, "NXPNFC"

    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    sput-object v0, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 139
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0
.end method

.method public static declared-synchronized getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;
    .locals 4
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 73
    const-class v2, Lcom/nxp/nfc/NxpNfcAdapter;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    if-nez v1, :cond_3

    .line 74
    if-nez p0, :cond_0

    .line 75
    const-string v1, "NXPNFC"

    const-string v3, "could not find NFC support"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 78
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 79
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_1

    .line 80
    const-string v1, "NXPNFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 83
    :cond_1
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    .line 84
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    if-nez v1, :cond_2

    .line 85
    const-string v1, "NXPNFC"

    const-string v3, "could not retrieve NXP NFC service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 88
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    .line 90
    :cond_3
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nxp/nfc/NxpNfcAdapter;

    .line 91
    .local v0, "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    if-nez v0, :cond_4

    .line 92
    new-instance v0, Lcom/nxp/nfc/NxpNfcAdapter;

    .end local v0    # "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    invoke-direct {v0}, Lcom/nxp/nfc/NxpNfcAdapter;-><init>()V

    .line 93
    .restart local v0    # "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_4
    monitor-exit v2

    return-object v0
.end method

.method private static getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 3

    .prologue
    .line 112
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a reference from NfcAdapter to use the  NXP NFC APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 119
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 105
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public changeDefaultRoute(Ljava/lang/String;)Z
    .locals 5
    .param p1, "defaultRoute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, "seID":I
    const/4 v1, 0x0

    .line 274
    .local v1, "result":Z
    :try_start_0
    const-string v3, "com.nxp.uicc.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const/4 v2, 0x2

    .line 285
    :goto_0
    sget-object v3, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->changeDefaultRoute(I)Z

    move-result v1

    .line 287
    return v1

    .line 276
    :cond_0
    const-string v3, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const/4 v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    const-string v3, "com.nxp.host.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    const/4 v2, 0x0

    goto :goto_0

    .line 281
    :cond_2
    const-string v3, "NXPNFC"

    const-string v4, "changeDefaultRoute: wrong default route ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v3, Ljava/io/IOException;

    const-string v4, "changeDefaultRoute failed: Wrong default route ID"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NXPNFC"

    const-string v4, "changeDefaultRoute failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->attemptDeadServiceRecovery()V

    .line 291
    new-instance v3, Ljava/io/IOException;

    const-string v4, "changeDefaultRoute failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createNfcSecureElementConnection()Lcom/nxp/nfc/NfcSecureElement;
    .locals 3

    .prologue
    .line 193
    :try_start_0
    new-instance v1, Lcom/nxp/nfc/NfcSecureElement;

    sget-object v2, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v2}, Lcom/nxp/nfc/INxpNfcAdapter;->getNfcSecureElementInterface()Lcom/nxp/nfc/INfcSecureElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nxp/nfc/NfcSecureElement;-><init>(Lcom/nxp/nfc/INfcSecureElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "createNfcSecureElementConnection failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->attemptDeadServiceRecovery()V

    .line 197
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deSelectedSecureElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1}, Lcom/nxp/nfc/INxpNfcAdapter;->deselectSecureElement()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->attemptDeadServiceRecovery()V

    .line 183
    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public doConfigureDesfireRoute(I)V
    .locals 3
    .param p1, "eeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 298
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->doConfigureDesfireRoute(I)V

    .line 308
    return-void

    .line 300
    :cond_0
    const-string v1, "NXPNFC"

    const-string v2, "doConfigureDesfireRoute: wrong ee route ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v1, Ljava/io/IOException;

    const-string v2, "doConfigureDesfireRoute failed: Wrong ee route ID"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "doConfigureDesfireRoute failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->attemptDeadServiceRecovery()V

    .line 306
    new-instance v1, Ljava/io/IOException;

    const-string v2, "doConfigureDesfireRoute failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDefaultSelectedSecureElement()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 153
    .local v1, "seID":I
    :try_start_0
    sget-object v2, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v2}, Lcom/nxp/nfc/INxpNfcAdapter;->getSelectedSecureElement()I

    move-result v1

    .line 154
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 155
    const-string v2, "com.nxp.uicc.ID"

    .line 159
    :goto_0
    return-object v2

    .line 156
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 157
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 158
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 159
    const-string v2, "com.nxp.all_se.ID"

    goto :goto_0

    .line 161
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NXPNFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->attemptDeadServiceRecovery()V

    .line 166
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;)V
    .locals 7
    .param p1, "seId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, "seID":I
    const/4 v4, 0x0

    .line 213
    .local v4, "seSelected":Z
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    const/4 v2, 0x2

    .line 224
    :goto_0
    :try_start_0
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5}, Lcom/nxp/nfc/INxpNfcAdapter;->getSecureElementList()[I

    move-result-object v3

    .line 226
    .local v3, "seList":[I
    if-eqz v3, :cond_4

    array-length v5, v3

    if-eqz v5, :cond_4

    .line 228
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 230
    aget v5, v3, v1

    if-ne v5, v2, :cond_0

    .line 232
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->selectSecureElement(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    const/4 v4, 0x1

    .line 229
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v1    # "i":I
    .end local v3    # "seList":[I
    :cond_1
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    const/4 v2, 0x1

    goto :goto_0

    .line 218
    :cond_2
    const-string v5, "NXPNFC"

    const-string/jumbo v6, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    .restart local v3    # "seList":[I
    :cond_3
    :try_start_1
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->selectSecureElement(I)I

    .line 239
    const/4 v4, 0x1

    .line 244
    :cond_4
    if-nez v4, :cond_5

    .line 245
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 246
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 247
    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    .end local v3    # "seList":[I
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NXPNFC"

    const-string/jumbo v6, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->attemptDeadServiceRecovery()V

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    return-void

    .line 248
    .restart local v3    # "seList":[I
    :cond_6
    :try_start_2
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 249
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 250
    new-instance v5, Ljava/io/IOException;

    const-string v6, "SMART_MX not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_7
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 252
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 253
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ALL_SE not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
.end method

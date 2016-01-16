.class Lcom/android/nfc/P2pLinkManager;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/nfc/P2pEventListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pLinkManager$SendTask;,
        Lcom/android/nfc/P2pLinkManager$ConnectTask;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final DISABLE_BEAM_DEFAULT:Ljava/lang/String; = "android.nfc.disable_beam_default"

.field static final ECHOSERVER_ENABLED:Z = false

.field static final HANDOVER_FAILURE:I = 0x1

.field static final HANDOVER_SAP:I = 0x14

.field static final HANDOVER_SUCCESS:I = 0x0

.field static final HANDOVER_UNSUPPORTED:I = 0x2

.field static final LINK_FIRST_PDU_LIMIT_MS:I = 0xc8

.field static final LINK_NOTHING_TO_SEND_DEBOUNCE_MS:I = 0x2ee

.field static final LINK_SEND_CANCELED_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_COMPLETE_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_CONFIRMED_DEBOUNCE_MS:I = 0x1388

.field static final LINK_SEND_PENDING_DEBOUNCE_MS:I = 0xbb8

.field static final LINK_STATE_DEBOUNCE:I = 0x4

.field static final LINK_STATE_DOWN:I = 0x1

.field static final LINK_STATE_UP:I = 0x3

.field static final LINK_STATE_WAITING_PDU:I = 0x2

.field static final MSG_DEBOUNCE_TIMEOUT:I = 0x1

.field static final MSG_HANDOVER_NOT_SUPPORTED:I = 0x7

.field static final MSG_RECEIVE_COMPLETE:I = 0x2

.field static final MSG_RECEIVE_HANDOVER:I = 0x3

.field static final MSG_SEND_COMPLETE:I = 0x4

.field static final MSG_SHOW_CONFIRMATION_UI:I = 0x8

.field static final MSG_START_ECHOSERVER:I = 0x5

.field static final MSG_STOP_ECHOSERVER:I = 0x6

.field static final MSG_WAIT_FOR_LINK_TIMEOUT:I = 0x9

.field static final NDEFPUSH_SAP:I = 0x10

.field static final SEND_STATE_CANCELED:I = 0x6

.field static final SEND_STATE_COMPLETE:I = 0x5

.field static final SEND_STATE_NEED_CONFIRMATION:I = 0x2

.field static final SEND_STATE_NOTHING_TO_SEND:I = 0x1

.field static final SEND_STATE_PENDING:I = 0x3

.field static final SEND_STATE_SENDING:I = 0x4

.field static final SNEP_FAILURE:I = 0x1

.field static final SNEP_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcP2pLinkManager"

.field static final WAIT_FOR_LINK_TIMEOUT_MS:I = 0x2710


# instance fields
.field mCallbackNdef:Landroid/nfc/IAppCallback;

.field mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

.field final mContext:Landroid/content/Context;

.field final mDefaultMiu:I

.field final mDefaultRwSize:I

.field final mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

.field final mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

.field final mEventListener:Lcom/android/nfc/P2pEventListener;

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

.field final mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field final mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

.field mIsReceiveEnabled:Z

.field mIsSendEnabled:Z

.field mLastLlcpActivationTime:J

.field mLinkState:I

.field mLlcpConnectDelayed:Z

.field mLlcpServicesConnected:Z

.field mMessageToSend:Landroid/nfc/NdefMessage;

.field mNdefCallbackUid:I

.field mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field final mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

.field final mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mProvisioningOnly:Z

.field mSendFlags:I

.field mSendState:I

.field mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

.field mSnepClient:Lcom/android/nfc/snep/SnepClient;

.field mUrisToSend:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;IIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p3, "defaultMiu"    # I
    .param p4, "defaultRwSize"    # I
    .param p5, "provisionOnly"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    new-instance v0, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 888
    new-instance v0, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 895
    new-instance v0, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 243
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 244
    new-instance v0, Lcom/android/nfc/snep/SnepServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 245
    new-instance v0, Lcom/android/nfc/handover/HandoverServer;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/nfc/handover/HandoverServer;-><init>(ILcom/android/nfc/handover/HandoverManager;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 253
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 254
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 256
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 257
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 258
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 259
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 260
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 261
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 262
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 263
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 264
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 266
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 268
    iput-boolean p5, p0, Lcom/android/nfc/P2pLinkManager;->mProvisioningOnly:Z

    .line 270
    return-void
.end method

.method private isManagedOrBeamDisabled(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 519
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 520
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 521
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1183
    packed-switch p0, :pswitch_data_0

    .line 1193
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1185
    :pswitch_0
    const-string v0, "LINK_STATE_DOWN"

    goto :goto_0

    .line 1187
    :pswitch_1
    const-string v0, "LINK_STATE_DEBOUNCE"

    goto :goto_0

    .line 1189
    :pswitch_2
    const-string v0, "LINK_STATE_UP"

    goto :goto_0

    .line 1191
    :pswitch_3
    const-string v0, "LINK_STATE_WAITING_PDU"

    goto :goto_0

    .line 1183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onP2pSendConfirmed(Z)V
    .locals 6
    .param p1, "requireConfirmation"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 1114
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    monitor-enter p0

    .line 1116
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v4, :cond_1

    .line 1118
    :cond_0
    monitor-exit p0

    .line 1139
    :goto_0
    return-void

    .line 1120
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1121
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v4, :cond_3

    .line 1126
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1127
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 1138
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1128
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_4

    .line 1129
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    goto :goto_1

    .line 1130
    :cond_4
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z

    if-eqz v0, :cond_5

    .line 1132
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_1

    .line 1133
    :cond_5
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v5, :cond_2

    .line 1135
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1136
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static sendStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1166
    packed-switch p0, :pswitch_data_0

    .line 1178
    :pswitch_0
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1168
    :pswitch_1
    const-string v0, "SEND_STATE_NOTHING_TO_SEND"

    goto :goto_0

    .line 1170
    :pswitch_2
    const-string v0, "SEND_STATE_NEED_CONFIRMATION"

    goto :goto_0

    .line 1172
    :pswitch_3
    const-string v0, "SEND_STATE_SENDING"

    goto :goto_0

    .line 1174
    :pswitch_4
    const-string v0, "SEND_STATE_COMPLETE"

    goto :goto_0

    .line 1176
    :pswitch_5
    const-string v0, "SEND_STATE_CANCELED"

    goto :goto_0

    .line 1166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 529
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 531
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 536
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 534
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.nfc.disable_beam_default"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 535
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method cancelSendNdefMessage()V
    .locals 2

    .prologue
    .line 636
    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->cancel(Z)Z

    .line 640
    :cond_0
    monitor-exit p0

    .line 641
    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method connectLlcpServices()V
    .locals 2

    .prologue
    .line 644
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 649
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 650
    monitor-exit p0

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&feature=beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 543
    .local v1, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 544
    .local v0, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method disconnectLlcpServices()V
    .locals 2

    .prologue
    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->cancel(Z)Z

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 566
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 567
    monitor-exit p0

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1198
    monitor-enter p0

    .line 1199
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    monitor-exit p0

    .line 1208
    return-void

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .locals 2
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 286
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 287
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 288
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 302
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 303
    monitor-exit p0

    .line 304
    return-void

    .line 291
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 292
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDisable: llcp deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 294
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 295
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 296
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 297
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getMessageAarPresent(Landroid/nfc/NdefMessage;)I
    .locals 8
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 1092
    if-nez p1, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return v5

    .line 1095
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 1096
    .local v4, "records":[Landroid/nfc/NdefRecord;
    if-eqz v4, :cond_0

    .line 1099
    move-object v0, v4

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1100
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1102
    const/4 v5, 0x1

    goto :goto_0

    .line 1099
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getMessageSize(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 1054
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMessageTnf(Landroid/nfc/NdefMessage;)I
    .locals 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 1059
    if-nez p1, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return v1

    .line 1062
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1063
    .local v0, "records":[Landroid/nfc/NdefRecord;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 1066
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    goto :goto_0
.end method

.method getMessageType(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1070
    if-nez p1, :cond_0

    .line 1071
    const-string v2, "null"

    .line 1087
    :goto_0
    return-object v2

    .line 1073
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 1074
    .local v1, "records":[Landroid/nfc/NdefRecord;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 1075
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 1077
    :cond_2
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1078
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1087
    const-string v2, "unknown"

    goto :goto_0

    .line 1081
    :pswitch_0
    const-string v2, "uri"

    goto :goto_0

    .line 1085
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    .line 930
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1047
    :goto_0
    :pswitch_0
    return v5

    .line 932
    :pswitch_1
    monitor-enter p0

    .line 933
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->start()V

    .line 934
    monitor-exit p0

    goto :goto_0

    .line 935
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 937
    :pswitch_2
    monitor-enter p0

    .line 938
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->stop()V

    .line 939
    monitor-exit p0

    goto :goto_0

    .line 940
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 942
    :pswitch_3
    monitor-enter p0

    .line 945
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 946
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pTimeoutWaitingForLink()V

    .line 947
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 950
    :pswitch_4
    monitor-enter p0

    .line 951
    :try_start_3
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v3, :cond_0

    .line 952
    monitor-exit p0

    goto :goto_0

    .line 961
    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 954
    :cond_0
    :try_start_4
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Debounce timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 956
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 957
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 958
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 959
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pOutOfRange()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V

    .line 961
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 965
    :pswitch_5
    monitor-enter p0

    .line 966
    :try_start_5
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v5, :cond_1

    .line 967
    monitor-exit p0

    goto :goto_0

    .line 983
    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v2

    .line 969
    :cond_1
    :try_start_6
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_2

    .line 970
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 972
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 973
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 978
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logP2p()V

    .line 981
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logP2pHoBt()V

    .line 983
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_0

    .line 986
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 987
    .local v1, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 988
    :try_start_7
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v5, :cond_3

    .line 989
    monitor-exit p0

    goto/16 :goto_0

    .line 1003
    :catchall_5
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v2

    .line 991
    :cond_3
    :try_start_8
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_4

    .line 992
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 994
    :cond_4
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 995
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 997
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V

    .line 1001
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logP2p()V

    .line 1003
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_0

    .line 1006
    .end local v1    # "m":Landroid/nfc/NdefMessage;
    :pswitch_7
    monitor-enter p0

    .line 1007
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1009
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v3, :cond_6

    .line 1010
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    .line 1015
    :catchall_6
    move-exception v2

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v2

    .line 1012
    :cond_6
    const/4 v2, 0x1

    :try_start_a
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1013
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pHandoverNotSupported()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 1015
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/16 :goto_0

    .line 1018
    :pswitch_8
    monitor-enter p0

    .line 1019
    const/4 v2, 0x0

    :try_start_b
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1021
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v3, :cond_8

    .line 1022
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    .line 1044
    :catchall_7
    move-exception v2

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v2

    .line 1024
    :cond_8
    const/4 v2, 0x5

    :try_start_c
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1025
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1026
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pSendComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1028
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v2, :cond_9

    .line 1030
    :try_start_d
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v2}, Landroid/nfc/IAppCallback;->onNdefPushComplete()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1037
    :cond_9
    :goto_1
    :try_start_e
    iget-boolean v2, p0, Lcom/android/nfc/P2pLinkManager;->mProvisioningOnly:Z

    if-eqz v2, :cond_a

    .line 1038
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logP2pTapnGo()V

    .line 1044
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed NDEF completed callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1041
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logP2p()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_2

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isLlcpActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHandoverUnsupported()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 620
    return-void
.end method

.method public onLlcpActivated()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x4

    .line 361
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 367
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z

    .line 369
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v0, :pswitch_data_0

    .line 421
    :cond_1
    :goto_0
    monitor-exit p0

    .line 422
    :goto_1
    return-void

    .line 371
    :pswitch_0
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pInRange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 373
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 374
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v3, :cond_2

    .line 375
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Sending pending data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 380
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    :cond_3
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 394
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    goto :goto_0

    .line 397
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 398
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested()V

    goto :goto_0

    .line 405
    :pswitch_1
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Unexpected onLlcpActivated() in LINK_STATE_WAITING_PDU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    monitor-exit p0

    goto :goto_1

    .line 408
    :pswitch_2
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    monitor-exit p0

    goto :goto_1

    .line 411
    :pswitch_3
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_5

    .line 413
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 414
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 418
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 416
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLlcpDeactivated()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 574
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "LLCP deactivated."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 580
    :cond_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v1, :pswitch_data_0

    .line 615
    :goto_0
    monitor-exit p0

    .line 616
    return-void

    .line 583
    :pswitch_0
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Duplicate onLlcpDectivated()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 588
    :pswitch_1
    const/4 v1, 0x4

    :try_start_1
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "debounceTimeout":I
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    packed-switch v1, :pswitch_data_1

    .line 606
    :goto_1
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 607
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v1, v3, :cond_1

    .line 608
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 612
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 592
    :pswitch_3
    const/4 v0, 0x0

    .line 593
    goto :goto_1

    .line 595
    :pswitch_4
    const/16 v0, 0xbb8

    .line 596
    goto :goto_1

    .line 598
    :pswitch_5
    const/16 v0, 0x1388

    .line 599
    goto :goto_1

    .line 601
    :pswitch_6
    const/16 v0, 0xfa

    .line 602
    goto :goto_1

    .line 604
    :pswitch_7
    const/16 v0, 0xfa

    goto :goto_1

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 590
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onLlcpFirstPacketReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 428
    monitor-enter p0

    .line 429
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long v0, v2, v4

    .line 430
    .local v0, "totalTime":J
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to get first LLCP PDU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v2, :pswitch_data_0

    .line 450
    :cond_0
    :goto_0
    monitor-exit p0

    .line 451
    return-void

    .line 433
    :pswitch_0
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Dropping first LLCP packet received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v0    # "totalTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 437
    .restart local v0    # "totalTime":J
    :pswitch_1
    :try_start_1
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Unexpected first LLCP packet received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :pswitch_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 441
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v6, :cond_0

    .line 443
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_0

    .line 446
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onLlcpServicesConnected()V
    .locals 2

    .prologue
    .line 655
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 658
    monitor-exit p0

    .line 670
    :goto_0
    return-void

    .line 660
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 661
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 665
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    .line 669
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .locals 2
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 334
    monitor-exit p0

    .line 355
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 342
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 348
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 351
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested()V

    .line 352
    const/16 v0, 0x9

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 354
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_5
    :try_start_1
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onP2pCanceled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1144
    monitor-enter p0

    .line 1145
    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1146
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v1, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1157
    return-void

    .line 1149
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1152
    const/4 v0, 0x1

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    goto :goto_0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1111
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 926
    return-void
.end method

.method onReceiveHandover()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 921
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 455
    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 463
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method prepareMessageToSend(Z)V
    .locals 7
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 466
    monitor-enter p0

    .line 467
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 468
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 469
    iget-boolean v4, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v4, :cond_0

    .line 470
    monitor-exit p0

    .line 516
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v4}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    .line 474
    .local v1, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 475
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Could not determine foreground UID."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    monitor-exit p0

    goto :goto_0

    .line 515
    .end local v1    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 479
    .restart local v1    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v4, :cond_2

    .line 480
    iget v4, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 482
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v4}, Landroid/nfc/IAppCallback;->createBeamShareData()Landroid/nfc/BeamShareData;

    move-result-object v3

    .line 483
    .local v3, "shareData":Landroid/nfc/BeamShareData;
    iget-object v4, v3, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 484
    iget-object v4, v3, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 485
    iget v4, v3, Landroid/nfc/BeamShareData;->flags:I

    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 487
    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NfcP2pLinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed NDEF callback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    .line 502
    if-eqz p1, :cond_3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/nfc/P2pLinkManager;->isManagedOrBeamDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 504
    :cond_3
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Disabling default Beam behavior"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 506
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 513
    :cond_4
    :goto_2
    const-string v4, "NfcP2pLinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMessageToSend = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v4, "NfcP2pLinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUrisToSend = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    monitor-exit p0

    goto/16 :goto_0

    .line 494
    .end local v2    # "pkgs":[Ljava/lang/String;
    :cond_5
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Last registered callback is not running in the foreground."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 508
    .restart local v2    # "pkgs":[Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 509
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method scheduleTimeoutLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1163
    return-void
.end method

.method sendNdefMessage()V
    .locals 2

    .prologue
    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 630
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 631
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 632
    monitor-exit p0

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .locals 1
    .param p1, "callbackNdef"    # Landroid/nfc/IAppCallback;
    .param p2, "callingUid"    # I

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 326
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 327
    monitor-exit p0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

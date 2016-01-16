.class public Lcom/android/nfc/P2pEventManager;
.super Ljava/lang/Object;
.source "P2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/P2pEventListener;
.implements Lcom/android/nfc/SendUi$Callback;


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "NfcP2pEventManager"

.field static final VIBRATION_PATTERN:[J


# instance fields
.field final mCallback:Lcom/android/nfc/P2pEventListener$Callback;

.field final mContext:Landroid/content/Context;

.field mInDebounce:Z

.field mNdefReceived:Z

.field mNdefSent:Z

.field final mNfcService:Lcom/android/nfc/NfcService;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field final mSendUi:Lcom/android/nfc/SendUi;

.field mSending:Z

.field final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 48
    iput-object p1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    .line 50
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    .line 51
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 55
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 57
    .local v0, "uiModeType":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v1, Lcom/android/nfc/SendUi;

    invoke-direct {v1, p1, p0}, Lcom/android/nfc/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/SendUi$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    goto :goto_0
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 175
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pCanceled()V

    .line 176
    return-void
.end method

.method public onP2pHandoverNotSupported()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 124
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 125
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 127
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 129
    return-void
.end method

.method public onP2pInRange()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 70
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 74
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 75
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/SendUi;->takeScreenshot()V

    .line 78
    :cond_0
    return-void
.end method

.method public onP2pNfcTapRequested()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 83
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 87
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 88
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/SendUi;->takeScreenshot()V

    .line 90
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/SendUi;->showPreSend(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public onP2pOutOfRange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 152
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    invoke-virtual {v0, v2}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 157
    :cond_1
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 158
    return-void
.end method

.method public onP2pReceiveComplete(Z)V
    .locals 4
    .param p1, "playSound"    # Z

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 134
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 145
    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 146
    return-void
.end method

.method public onP2pResumeSend()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 191
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 192
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/SendUi;->showStartSend()V

    .line 196
    :cond_0
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 197
    return-void
.end method

.method public onP2pSendComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 113
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 114
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    invoke-virtual {v0, v3}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 118
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 119
    return-void
.end method

.method public onP2pSendConfirmationRequested()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/SendUi;->showPreSend(Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    goto :goto_0
.end method

.method public onP2pSendDebounce()V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 181
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 182
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/SendUi;->showSendHint()V

    .line 185
    :cond_0
    return-void
.end method

.method public onP2pTimeoutWaitingForLink()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public onSendConfirmed()V
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/SendUi;->showStartSend()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 168
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 170
    return-void
.end method

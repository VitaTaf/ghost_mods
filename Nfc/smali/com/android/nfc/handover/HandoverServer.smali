.class public final Lcom/android/nfc/handover/HandoverServer;
.super Ljava/lang/Object;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverServer$1;,
        Lcom/android/nfc/handover/HandoverServer$ConnectionThread;,
        Lcom/android/nfc/handover/HandoverServer$ServerThread;,
        Lcom/android/nfc/handover/HandoverServer$Callback;
    }
.end annotation


# static fields
.field public static final DBG:Ljava/lang/Boolean;

.field public static final HANDOVER_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:handover"

.field public static final MIU:I = 0x80

.field public static final TAG:Ljava/lang/String; = "HandoverServer"


# instance fields
.field final mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field final mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field final mSap:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILcom/android/nfc/handover/HandoverManager;Lcom/android/nfc/handover/HandoverServer$Callback;)V
    .locals 1
    .param p1, "sap"    # I
    .param p2, "manager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p3, "callback"    # Lcom/android/nfc/handover/HandoverServer$Callback;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 50
    iput p1, p0, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    .line 51
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverServer;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 52
    iput-object p3, p0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/nfc/handover/HandoverServer$ServerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$1;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 58
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ServerThread;->start()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ServerThread;->shutdown()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

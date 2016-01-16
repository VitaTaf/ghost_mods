.class final Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;
.super Landroid/os/AsyncTask;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HceReceiverTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 584
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 587
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    monitor-enter v2

    .line 588
    :try_start_0
    const-string v1, "NativeNfcManager"

    const-string v3, "Waiting for an APDU..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    # invokes: Lcom/android/nfc/dhimpl/NativeNfcManager;->doReceiveData()[B
    invoke-static {v1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->access$000(Lcom/android/nfc/dhimpl/NativeNfcManager;)[B

    move-result-object v0

    .line 590
    .local v0, "data":[B
    const-string v1, "NativeNfcManager"

    const-string v3, "doReceiveData. reutrn.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    # invokes: Lcom/android/nfc/dhimpl/NativeNfcManager;->notifyHostEmuData([B)V
    invoke-static {v1, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->access$100(Lcom/android/nfc/dhimpl/NativeNfcManager;[B)V

    .line 594
    :cond_0
    monitor-exit v2

    .line 595
    const/4 v1, 0x0

    return-object v1

    .line 594
    .end local v0    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

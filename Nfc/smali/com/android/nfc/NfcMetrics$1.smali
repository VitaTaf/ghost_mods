.class final Lcom/android/nfc/NfcMetrics$1;
.super Ljava/lang/Thread;
.source "NfcMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$parameter:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/nfc/NfcMetrics$1;->val$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/nfc/NfcMetrics$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/nfc/NfcMetrics$1;->val$parameter:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/nfc/NfcMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 136
    .local v4, "timestamp":J
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    iget-object v1, p0, Lcom/android/nfc/NfcMetrics$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/nfc/NfcMetrics$1;->val$id:Ljava/lang/String;

    const-string v3, "1.0"

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 137
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/nfc/NfcMetrics$1;->val$parameter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    # getter for: Lcom/android/nfc/NfcMetrics;->DBG:Z
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "NfcMetrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publish event: tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcMetrics$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcMetrics$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcMetrics$1;->val$parameter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .end local v4    # "timestamp":J
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v6

    .line 145
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "NfcMetrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckinEvent exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

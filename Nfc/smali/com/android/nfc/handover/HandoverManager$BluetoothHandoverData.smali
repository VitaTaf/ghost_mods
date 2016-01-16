.class Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
.super Ljava/lang/Object;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothHandoverData"
.end annotation


# instance fields
.field public carrierActivating:Z

.field public device:Landroid/bluetooth/BluetoothDevice;

.field public name:Ljava/lang/String;

.field public transport:I

.field public valid:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->carrierActivating:Z

    .line 106
    iput v0, p0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->transport:I

    return-void
.end method

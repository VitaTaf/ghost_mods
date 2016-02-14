.class Lcom/android/keyguard/CarrierText$CarrierTextForSim;
.super Ljava/lang/Object;
.source "CarrierText.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarrierTextForSim"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/keyguard/CarrierText$CarrierTextForSim;",
        ">;"
    }
.end annotation


# instance fields
.field carrierTextForSimState:Ljava/lang/CharSequence;

.field slotId:I

.field subId:I

.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;IILjava/lang/CharSequence;)V
    .locals 0
    .param p2, "subId"    # I
    .param p3, "slotId"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->subId:I

    iput p3, p0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->slotId:I

    iput-object p4, p0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->carrierTextForSimState:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/keyguard/CarrierText$CarrierTextForSim;)I
    .locals 2
    .param p1, "text"    # Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    .prologue
    iget v0, p0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->slotId:I

    iget v1, p1, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->slotId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->subId:I

    iget v1, p1, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->subId:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->slotId:I

    iget v1, p1, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->slotId:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->compareTo(Lcom/android/keyguard/CarrierText$CarrierTextForSim;)I

    move-result v0

    return v0
.end method

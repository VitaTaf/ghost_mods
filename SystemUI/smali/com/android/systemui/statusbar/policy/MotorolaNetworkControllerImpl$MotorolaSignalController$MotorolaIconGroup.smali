.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;
.super Ljava/lang/Object;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaIconGroup"
.end annotation


# instance fields
.field final mContentDesc:[I

.field final mDiscContentDesc:I

.field final mName:Ljava/lang/String;

.field final mQsDiscState:I

.field final mQsIcons:[[I

.field final mQsNullState:I

.field final mSbDiscState:I

.field final mSbIcons:[[I

.field final mSbNullState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I

    .prologue
    .line 11377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11378
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mName:Ljava/lang/String;

    .line 11379
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mSbIcons:[[I

    .line 11380
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mQsIcons:[[I

    .line 11381
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mContentDesc:[I

    .line 11382
    iput p5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mSbNullState:I

    .line 11383
    iput p6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mQsNullState:I

    .line 11384
    iput p7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mSbDiscState:I

    .line 11385
    iput p8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mQsDiscState:I

    .line 11386
    iput p9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mDiscContentDesc:I

    .line 11387
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotorolaIconGroup( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

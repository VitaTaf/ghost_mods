.class public final Lcom/android/systemui/volume/VolumeDialogController$State;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static NO_ACTIVE_STREAM:I


# instance fields
.field public activeStream:I

.field public effectsSuppressor:Landroid/content/ComponentName;

.field public effectsSuppressorName:Ljava/lang/String;

.field public exitCondition:Landroid/service/notification/Condition;

.field public ringerModeExternal:I

.field public ringerModeInternal:I

.field public final states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumeDialogController$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field public zenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 903
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/volume/VolumeDialogController$State;->NO_ACTIVE_STREAM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 913
    sget v0, Lcom/android/systemui/volume/VolumeDialogController$State;->NO_ACTIVE_STREAM:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 5

    .prologue
    .line 916
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogController$State;-><init>()V

    .line 917
    .local v1, "rt":Lcom/android/systemui/volume/VolumeDialogController$State;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 918
    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->copy()Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    :cond_0
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    .line 921
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    .line 922
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    .line 923
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 924
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 925
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v2}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    .line 926
    :cond_2
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    .line 927
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 934
    if-lez v0, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 935
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 936
    .local v3, "stream":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 937
    .local v2, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    iget-boolean v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_1

    const-string v4, " [MUTED]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    .end local v2    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v3    # "stream":I
    :cond_2
    const-string v4, ",ringerModeExternal:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    const-string v4, ",ringerModeInternal:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 943
    const-string v4, ",zenMode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 944
    const-string v4, ",effectsSuppressor:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 945
    const-string v4, ",effectsSuppressorName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v4, ",exitCondition:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 947
    const-string v4, ",activeStream:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 948
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

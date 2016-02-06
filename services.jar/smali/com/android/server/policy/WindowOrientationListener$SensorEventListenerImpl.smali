.class final Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 75.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x4b

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0x28


# instance fields
.field private final TILT_OVERHEAD_ENTER:I

.field private final TILT_OVERHEAD_EXIT:I

.field private final TILT_TOLERANCE:[[I

.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener;)V
    .locals 5

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x2

    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    const/16 v0, -0x28

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->TILT_OVERHEAD_ENTER:I

    const/16 v0, -0xf

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->TILT_OVERHEAD_EXIT:I

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    return-void

    nop

    :array_0
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_1
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_2
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_3
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    return-void
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    return-void
.end method

.method private clearPredictedRotationLocked()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    return-void
.end method

.method private clearTiltHistoryLocked()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    return-void
.end method

.method private getLastTiltLocked()F
    .locals 2

    .prologue
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    goto :goto_0
.end method

.method private isAcceleratingLocked(F)Z
    .locals 1
    .param p1, "magnitude"    # F

    .prologue
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlatLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x3b9aca00

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->access$400(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    .local v0, "currentRotation":I
    if-ltz v0, :cond_5

    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .local v1, "lowerBound":I
    if-nez p1, :cond_2

    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .end local v1    # "lowerBound":I
    :cond_1
    :goto_0
    return v3

    .restart local v1    # "lowerBound":I
    :cond_2
    if-lt p2, v1, :cond_1

    .end local v1    # "lowerBound":I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .local v2, "upperBound":I
    if-nez p1, :cond_6

    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .end local v2    # "upperBound":I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .restart local v2    # "upperBound":I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const-wide/32 v6, 0x1dcd6500

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v4, 0x2625a00

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwingingLocked(JF)Z
    .locals 7
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    if-nez p1, :cond_0

    const/16 p1, 0x28

    .end local p1    # "index":I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .restart local p1    # "index":I
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1    # "index":I
    :goto_0
    return p1

    .restart local p1    # "index":I
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private remainingMS(JJ)F
    .locals 3
    .param p1, "now"    # J
    .param p3, "until"    # J

    .prologue
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private resetLocked()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistoryLocked()V

    return-void
.end method

.method private updatePredictedRotationLocked(JI)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .prologue
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTiltHistory={last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->getLastTiltLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mFlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSwinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAccelerating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOverhead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getProposedRotationLocked()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 32
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mUseVirtualGravitySensor:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aget v24, v24, v26

    move/from16 v0, v24

    float-to-int v15, v0

    .local v15, "rotation":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-lt v15, v0, :cond_0

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    :cond_0
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v24, v0

    if-ltz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .end local v15    # "rotation":I
    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v24

    :try_start_1
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aget v21, v24, v26

    .local v21, "x":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v24, v0

    const/16 v26, 0x1

    aget v22, v24, v26

    .local v22, "y":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v24, v0

    const/16 v26, 0x2

    aget v23, v24, v26

    .local v23, "z":F
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Raw acceleration vector: x="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", y="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", z="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", magnitude="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    mul-float v27, v21, v21

    mul-float v28, v22, v22

    add-float v27, v27, v28

    mul-float v28, v23, v23

    add-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    move-wide/from16 v18, v0

    .local v18, "then":J
    sub-long v26, v10, v18

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v24, v0

    const v26, 0x358637bd    # 1.0E-6f

    mul-float v20, v24, v26

    .local v20, "timeDeltaMS":F
    cmp-long v24, v10, v18

    if-ltz v24, :cond_4

    const-wide/32 v26, 0x3b9aca00

    add-long v26, v26, v18

    cmp-long v24, v10, v26

    if-gtz v24, :cond_4

    const/16 v24, 0x0

    cmpl-float v24, v21, v24

    if-nez v24, :cond_c

    const/16 v24, 0x0

    cmpl-float v24, v22, v24

    if-nez v24, :cond_c

    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-nez v24, :cond_c

    :cond_4
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_5

    const-string v24, "WindowOrientationListener"

    const-string v26, "Resetting orientation listener."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    const/16 v16, 0x1

    .local v16, "skipSample":Z
    :goto_1
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    const/4 v5, 0x0

    .local v5, "isAccelerating":Z
    const/4 v6, 0x0

    .local v6, "isFlat":Z
    const/4 v7, 0x0

    .local v7, "isSwinging":Z
    if-nez v16, :cond_7

    mul-float v24, v21, v21

    mul-float v26, v22, v22

    add-float v24, v24, v26

    mul-float v26, v23, v23

    add-float v24, v24, v26

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    .local v8, "magnitude":F
    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v24, v8, v24

    if-gez v24, :cond_e

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_6

    const-string v24, "WindowOrientationListener"

    const-string v26, "Ignoring sensor data, magnitude too close to zero."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .end local v8    # "magnitude":F
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .local v12, "oldProposedRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v24, v0

    if-ltz v24, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptableLocked(J)Z

    move-result v24

    if-eqz v24, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .local v14, "proposedRotation":I
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_a

    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Result: currentRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/policy/WindowOrientationListener;->access$400(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", proposedRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", predictedRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeDeltaMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isAccelerating="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isFlat="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isSwinging="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isOverhead="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilSettledMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x2625a00

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x1dcd6500

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x1dcd6500

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x11e1a300

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v14, v12, :cond_1

    if-ltz v14, :cond_1

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_b

    const-string v24, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", oldProposedRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto/16 :goto_0

    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v12    # "oldProposedRotation":I
    .end local v14    # "proposedRotation":I
    .end local v16    # "skipSample":Z
    :cond_c
    const/high16 v24, 0x43480000    # 200.0f

    add-float v24, v24, v20

    div-float v4, v20, v24

    .local v4, "alpha":F
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v24, v0

    sub-float v24, v21, v24

    mul-float v24, v24, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v26, v0

    add-float v21, v24, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    mul-float v24, v24, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v26, v0

    add-float v22, v24, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v24, v0

    sub-float v24, v23, v24

    mul-float v24, v24, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v26, v0

    add-float v23, v24, v26

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_d

    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Filtered acceleration vector: x="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", y="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", z="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", magnitude="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    mul-float v27, v21, v21

    mul-float v28, v22, v22

    add-float v27, v27, v28

    mul-float v28, v23, v23

    add-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v16, 0x0

    .restart local v16    # "skipSample":Z
    goto/16 :goto_1

    .end local v4    # "alpha":F
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isAcceleratingLocked(F)Z

    move-result v24

    if-eqz v24, :cond_f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    :cond_f
    div-float v24, v23, v8

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v17, v0

    .local v17, "tiltAngle":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntryLocked(JF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isFlatLocked(J)Z

    move-result v24

    if-eqz v24, :cond_10

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    :cond_10
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isSwingingLocked(JF)Z

    move-result v24

    if-eqz v24, :cond_11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    :cond_11
    const/16 v24, -0x28

    move/from16 v0, v17

    move/from16 v1, v24

    if-gt v0, v1, :cond_14

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    :cond_12
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_13

    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_2

    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v8    # "magnitude":F
    .end local v10    # "now":J
    .end local v16    # "skipSample":Z
    .end local v17    # "tiltAngle":I
    .end local v18    # "then":J
    .end local v20    # "timeDeltaMS":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    .end local v23    # "z":F
    :catchall_1
    move-exception v24

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v24

    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    .restart local v10    # "now":J
    .restart local v16    # "skipSample":Z
    .restart local v17    # "tiltAngle":I
    .restart local v18    # "then":J
    .restart local v20    # "timeDeltaMS":F
    .restart local v21    # "x":F
    .restart local v22    # "y":F
    .restart local v23    # "z":F
    :cond_14
    const/16 v24, -0xf

    move/from16 v0, v17

    move/from16 v1, v24

    if-lt v0, v1, :cond_12

    const/16 v24, 0x0

    :try_start_4
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    goto :goto_3

    :cond_15
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v24

    const/16 v26, 0x4b

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_17

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_16

    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_2

    :cond_17
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v13, v0

    .local v13, "orientationAngle":I
    if-gez v13, :cond_18

    add-int/lit16 v13, v13, 0x168

    :cond_18
    add-int/lit8 v24, v13, 0x2d

    div-int/lit8 v9, v24, 0x5a

    .local v9, "nearestRotation":I
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v9, v0, :cond_19

    const/4 v9, 0x0

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptableLocked(II)Z

    move-result v24

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptableLocked(II)Z

    move-result v24

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v9}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotationLocked(JI)V

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Predicted: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", orientationAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", predictedRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", predictedRotationAgeMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v28, v0

    sub-long v28, v10, v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x358637bd    # 1.0E-6f

    mul-float v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1a
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()Z

    move-result v24

    if-eqz v24, :cond_1b

    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", orientationAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2
.end method

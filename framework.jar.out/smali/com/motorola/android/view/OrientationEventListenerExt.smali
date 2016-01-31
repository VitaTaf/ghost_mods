.class public abstract Lcom/motorola/android/view/OrientationEventListenerExt;
.super Ljava/lang/Object;
.source "OrientationEventListenerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/view/OrientationEventListenerExt$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OrientationEventListenerExt"

.field private static final localLOGV:Z


# instance fields
.field private mEnabled:Z

.field private mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUseVirtualGravitySensor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/view/OrientationEventListenerExt;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mOrientation:I

    iput-boolean v1, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mEnabled:Z

    iput-boolean v1, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mUseVirtualGravitySensor:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mUseVirtualGravitySensor:Z

    iget-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mUseVirtualGravitySensor:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/android/view/OrientationEventListenerExt$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/android/view/OrientationEventListenerExt$1;-><init>(Lcom/motorola/android/view/OrientationEventListenerExt;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensorManager:Landroid/hardware/SensorManager;

    iput p2, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mRate:I

    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensorManager:Landroid/hardware/SensorManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/android/view/OrientationEventListenerExt$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/motorola/android/view/OrientationEventListenerExt$SensorEventListenerImpl;-><init>(Lcom/motorola/android/view/OrientationEventListenerExt;)V

    iput-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    goto :goto_0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mUseVirtualGravitySensor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mUseVirtualGravitySensor:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    const-string v0, "OrientationEventListenerExt"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mUseVirtualGravitySensor:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    const-string v0, "OrientationEventListenerExt"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/view/OrientationEventListenerExt;->mEnabled:Z

    goto :goto_0
.end method

.method public abstract onOrientationChanged(I)V
.end method

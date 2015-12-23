.class Lcom/motorola/android/view/OrientationEventListenerExt$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListenerExt.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/view/OrientationEventListenerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final _DATA:I


# instance fields
.field final synthetic this$0:Lcom/motorola/android/view/OrientationEventListenerExt;


# direct methods
.method constructor <init>(Lcom/motorola/android/view/OrientationEventListenerExt;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/motorola/android/view/OrientationEventListenerExt$SensorEventListenerImpl;->this$0:Lcom/motorola/android/view/OrientationEventListenerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 130
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 131
    .local v1, "values":[F
    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-int v0, v2

    .line 132
    .local v0, "rotation":I
    if-ltz v0, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/motorola/android/view/OrientationEventListenerExt$SensorEventListenerImpl;->this$0:Lcom/motorola/android/view/OrientationEventListenerExt;

    mul-int/lit8 v3, v0, 0x5a

    invoke-virtual {v2, v3}, Lcom/motorola/android/view/OrientationEventListenerExt;->onOrientationChanged(I)V

    .line 135
    :cond_0
    return-void
.end method

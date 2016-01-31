.class public Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
.super Ljava/lang/Object;
.source "GestureSharingModalityLocHandler.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCATION_UPDATES_INTERVAL:J = 0x1d4c0L

.field private static final DEFAULT_MIN_SPEED_MOVING:F = 2.0f

.field private static final DEFAULT_MIN_SPEED_VEHICLE:F = 6.0f

.field private static final DEFAULT_REGISTRATION_EXPIRE:J = 0xa4cb80L

.field private static final MINUTE:J = 0xea60L

.field private static final SECOND:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "-GSModalityLocHandler"

.field private static sInstance:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureSharingReceiver:Landroid/content/BroadcastReceiver;

.field private mIsRegistered:Z

.field private mLastLatitude:D

.field private mLastLocatoinTime:J

.field private mLastLongitude:D

.field private mLastState:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

.field private mLocationUpdatesInterval:J

.field private mMinSpeedMoving:F

.field private mMinSpeedVehicle:F

.field private mRegisterExpireTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;-><init>(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mGestureSharingReceiver:Landroid/content/BroadcastReceiver;

    iput-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLocatoinTime:J

    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLatitude:D

    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLongitude:D

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLocationUpdatesInterval:J

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedVehicle:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedMoving:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z

    iput-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mRegisterExpireTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->UNKNOWN:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastState:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)J
    .locals 2
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    .prologue
    iget-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLocationUpdatesInterval:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;J)J
    .locals 1
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLocationUpdatesInterval:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)F
    .locals 1
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    .prologue
    iget v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedVehicle:F

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;F)F
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedVehicle:F

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)F
    .locals 1
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    .prologue
    iget v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedMoving:F

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;F)F
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedMoving:F

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;J)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->register(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    .prologue
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->unRegister()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    :cond_0
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleModalityState(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;)V
    .locals 6
    .param p1, "state"    # Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    .prologue
    const/4 v5, 0x3

    const-string v2, "-GSModalityLocHandler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "-GSModalityLocHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle Modality State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastState:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    if-ne p1, v2, :cond_2

    const-string v2, "-GSModalityLocHandler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-GSModalityLocHandler"

    const-string v3, "Already in this state - ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "-GSModalityLocHandler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "-GSModalityLocHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing state ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastState:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    invoke-virtual {v4}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastState:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    const/4 v1, 0x0

    .local v1, "modality":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->UNKNOWN:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    if-ne p1, v2, :cond_5

    :cond_4
    const-string v1, "MODALITY_UNREGISTERED"

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.GS_MODALITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.motorola.internal.intent.action.GS_NEW_MODALITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    sget-object v2, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->VEHICLE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    if-ne p1, v2, :cond_6

    const-string v1, "MODALITY_VEHICLE"

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->MOVING:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    if-ne p1, v2, :cond_7

    const-string v1, "MODALITY_WALKING"

    goto :goto_1

    :cond_7
    const-string v1, "MODALITY_NONE"

    goto :goto_1
.end method

.method private register(J)V
    .locals 9
    .param p1, "expire"    # J

    .prologue
    const/4 v7, 0x3

    const-string v1, "-GSModalityLocHandler"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-GSModalityLocHandler"

    const-string v2, "Registering Location Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mRegisterExpireTime:J

    const-string v1, "-GSModalityLocHandler"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-GSModalityLocHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already registered. Extending expire time to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mRegisterExpireTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .local v0, "locationManager":Landroid/location/LocationManager;
    if-eqz v0, :cond_3

    :try_start_0
    const-string/jumbo v1, "network"

    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLocationUpdatesInterval:J

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mRegisterExpireTime:J

    const-string v1, "-GSModalityLocHandler"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-GSModalityLocHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully registered. Reg will expire at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mRegisterExpireTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "-GSModalityLocHandler"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "-GSModalityLocHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR - Could not register for location updates. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z

    goto :goto_1
.end method

.method private unRegister()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-string v1, "-GSModalityLocHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-GSModalityLocHandler"

    const-string v2, "Un-registering Location Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .local v0, "locationManager":Landroid/location/LocationManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLocatoinTime:J

    iput-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLatitude:D

    iput-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLongitude:D

    sget-object v1, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->UNKNOWN:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    invoke-direct {p0, v1}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->handleModalityState(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    const-string v1, "-GSModalityLocHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-GSModalityLocHandler"

    const-string v2, "Init Modality Location Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.internal.intent.action.GS_REGISTER_LOC_MODALITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.internal.intent.action.GS_UNREGISTER_LOC_MODALITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mGestureSharingReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.motorola.blast.permission.TRIGGER_BLAST_ACTION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 14
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-string v0, "-GSModalityLocHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-GSModalityLocHandler"

    const-string/jumbo v1, "onLocationChanged invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .local v4, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .local v6, "lng":D
    const-string v0, "-GSModalityLocHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-GSModalityLocHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location update received: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "now":J
    iget-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mIsRegistered:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mRegisterExpireTime:J

    cmp-long v0, v10, v0

    if-lez v0, :cond_4

    const-string v0, "-GSModalityLocHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "-GSModalityLocHandler"

    const-string v1, "Registration expired - unregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->unRegister()V

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLocatoinTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    new-array v8, v0, [F

    .local v8, "distances":[F
    iget-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLatitude:D

    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLongitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    iget-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLocatoinTime:J

    sub-long v0, v10, v0

    const-wide/16 v2, 0x3e8

    div-long v12, v0, v2

    .local v12, "timeDiffSec":J
    const/4 v0, 0x0

    aget v0, v8, v0

    long-to-float v1, v12

    div-float v9, v0, v1

    .local v9, "speed":F
    const-string v0, "-GSModalityLocHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "-GSModalityLocHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Time Diff (sec): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedVehicle:F

    cmpl-float v0, v9, v0

    if-lez v0, :cond_7

    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->VEHICLE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->handleModalityState(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;)V

    .end local v8    # "distances":[F
    .end local v9    # "speed":F
    .end local v12    # "timeDiffSec":J
    :cond_6
    :goto_1
    iput-wide v10, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLocatoinTime:J

    iput-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLatitude:D

    iput-wide v6, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLastLongitude:D

    goto/16 :goto_0

    .restart local v8    # "distances":[F
    .restart local v9    # "speed":F
    .restart local v12    # "timeDiffSec":J
    :cond_7
    iget v0, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedMoving:F

    cmpl-float v0, v9, v0

    if-lez v0, :cond_8

    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->MOVING:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->handleModalityState(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->NONE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->handleModalityState(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;)V

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-string v0, "-GSModalityLocHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-GSModalityLocHandler"

    const-string/jumbo v1, "onProviderDisabled invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-string v0, "-GSModalityLocHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-GSModalityLocHandler"

    const-string/jumbo v1, "onProviderEnabled invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "-GSModalityLocHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-GSModalityLocHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStatusChanged invoked - Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

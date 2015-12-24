.class Lcom/android/server/location/GeoFencerProxy$1;
.super Ljava/lang/Object;
.source "GeoFencerProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeoFencerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeoFencerProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeoFencerProxy;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy$1;->this$0:Lcom/android/server/location/GeoFencerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy$1;->this$0:Lcom/android/server/location/GeoFencerProxy;

    invoke-static {p2}, Landroid/location/IGeoFencer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeoFencer;

    move-result-object v1

    # setter for: Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;
    invoke-static {v0, v1}, Lcom/android/server/location/GeoFencerProxy;->access$002(Lcom/android/server/location/GeoFencerProxy;Landroid/location/IGeoFencer;)Landroid/location/IGeoFencer;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit p0

    .line 72
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy$1;->this$0:Lcom/android/server/location/GeoFencerProxy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;
    invoke-static {v0, v1}, Lcom/android/server/location/GeoFencerProxy;->access$002(Lcom/android/server/location/GeoFencerProxy;Landroid/location/IGeoFencer;)Landroid/location/IGeoFencer;

    .line 76
    monitor-exit p0

    .line 80
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

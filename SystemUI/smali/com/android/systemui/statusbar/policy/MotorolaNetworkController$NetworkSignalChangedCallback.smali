.class public interface abstract Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;
.super Ljava/lang/Object;
.source "MotorolaNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkSignalChangedCallback"
.end annotation


# virtual methods
.method public abstract onAirplaneModeChanged(Z)V
.end method

.method public abstract onMobileDataEnabled(Z)V
.end method

.method public abstract onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onMobileDataSignalChanged(ZZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZII)V
.end method

.method public abstract onNoSimVisibleChanged(Z)V
.end method

.method public abstract onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWifiSignalChanged(ZZZIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

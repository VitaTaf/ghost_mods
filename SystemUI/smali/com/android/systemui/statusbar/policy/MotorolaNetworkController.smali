.class public interface abstract Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
.super Ljava/lang/Object;
.source "MotorolaNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;
    }
.end annotation


# virtual methods
.method public abstract addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;
.end method

.method public abstract getMobileDataController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract isActiveSubscriptionId(I)Z
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public abstract removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method

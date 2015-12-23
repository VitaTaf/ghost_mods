.class public interface abstract Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;
.super Ljava/lang/Object;
.source "MotorolaNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessPointController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPointCallback;
    }
.end annotation


# virtual methods
.method public abstract addAccessPointCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPointCallback;)V
.end method

.method public abstract canConfigWifi()Z
.end method

.method public abstract connect(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPoint;)Z
.end method

.method public abstract removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController$AccessPointCallback;)V
.end method

.method public abstract scanForAccessPoints()V
.end method

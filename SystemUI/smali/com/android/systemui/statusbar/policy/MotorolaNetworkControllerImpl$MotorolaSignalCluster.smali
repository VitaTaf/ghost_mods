.class public interface abstract Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;
.super Ljava/lang/Object;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotorolaSignalCluster"
.end annotation


# virtual methods
.method public abstract setIsAirplaneMode(ZII)V
.end method

.method public abstract setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract setMobileDataIndicators(ZZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZI)V
.end method

.method public abstract setNoSims(Z)V
.end method

.method public abstract setSubs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setWifiIndicators(ZILjava/lang/String;)V
.end method

.method public abstract setWifiIndicators(ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

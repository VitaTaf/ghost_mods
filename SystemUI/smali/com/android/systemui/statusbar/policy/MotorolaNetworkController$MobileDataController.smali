.class public interface abstract Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
.super Ljava/lang/Object;
.source "MotorolaNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileDataController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController$DataUsageInfo;
    }
.end annotation


# virtual methods
.method public abstract getDataUsageInfo(I)Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController$DataUsageInfo;
.end method

.method public abstract isMobileDataEnabled()Z
.end method

.method public abstract isMobileDataSupported()Z
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method

.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$5;
.super Ljava/lang/Object;
.source "MotorolaNetworkControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 2
    .param p1, "lhs"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "rhs"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 2077
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2071
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$5;->compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    return v0
.end method

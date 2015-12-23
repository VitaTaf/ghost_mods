.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$6;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateMobileControllers()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    .line 3128
    return-void
.end method

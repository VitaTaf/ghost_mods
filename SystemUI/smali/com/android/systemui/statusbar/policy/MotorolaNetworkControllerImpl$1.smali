.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$1;
.super Ljava/lang/Object;
.source "MotorolaNetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;)V
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
    .line 742
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->notifyMobileDataEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;Z)V

    .line 748
    return-void
.end method

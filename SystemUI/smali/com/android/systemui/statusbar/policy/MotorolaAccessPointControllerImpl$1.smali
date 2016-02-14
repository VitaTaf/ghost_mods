.class Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl$1;
.super Ljava/lang/Object;
.source "MotorolaAccessPointControllerImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect failure reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    const-string v1, "connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.class Lcom/android/systemui/statusbar/MotorolaSignalClusterView$1;
.super Ljava/lang/Object;
.source "MotorolaSignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mVpnVisible:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->access$102(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;Z)Z

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    # invokes: Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->apply()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->access$200(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)V

    .line 233
    return-void
.end method

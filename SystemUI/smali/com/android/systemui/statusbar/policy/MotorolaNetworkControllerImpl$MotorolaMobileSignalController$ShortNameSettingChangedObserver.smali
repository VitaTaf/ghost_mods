.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;
.super Landroid/database/ContentObserver;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortNameSettingChangedObserver"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "currentContext"    # Landroid/content/Context;

    .prologue
    .line 4348
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .line 4349
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4350
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;->mResolver:Landroid/content/ContentResolver;

    .line 4351
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;->mHandler:Landroid/os/Handler;

    .line 4352
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4371
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 4355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_network_name"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4362
    return-void
.end method

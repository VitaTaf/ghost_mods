.class Lcom/android/settings/wifi/OffloadWifiApSelector$3;
.super Ljava/lang/Object;
.source "OffloadWifiApSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/OffloadWifiApSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$3;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$3;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    invoke-virtual {v0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_offload_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$3;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    invoke-virtual {v0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->finish()V

    .line 139
    return-void
.end method

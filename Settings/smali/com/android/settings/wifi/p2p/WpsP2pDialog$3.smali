.class synthetic Lcom/android/settings/wifi/p2p/WpsP2pDialog$3;
.super Ljava/lang/Object;
.source "WpsP2pDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WpsP2pDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$wifi$p2p$WpsP2pDialog$DialogState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->values()[Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$3;->$SwitchMap$com$android$settings$wifi$p2p$WpsP2pDialog$DialogState:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$3;->$SwitchMap$com$android$settings$wifi$p2p$WpsP2pDialog$DialogState:[I

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$3;->$SwitchMap$com$android$settings$wifi$p2p$WpsP2pDialog$DialogState:[I

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.class public Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;
.super Landroid/app/DialogFragment;
.source "OffloadWifiApSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/OffloadWifiApSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiDialogFragment"
.end annotation


# static fields
.field private static accessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private static edit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/wifi/AccessPoint;Z)Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;
    .locals 1
    .param p0, "ap"    # Lcom/android/settings/wifi/AccessPoint;
    .param p1, "edit"    # Z

    .prologue
    .line 326
    new-instance v0, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;-><init>()V

    .line 327
    .local v0, "frag":Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;
    invoke-direct {v0, p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->setAccessPoint(Lcom/android/settings/wifi/AccessPoint;)V

    .line 328
    invoke-direct {v0, p1}, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->setEdit(Z)V

    .line 329
    return-object v0
.end method

.method private setAccessPoint(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 0
    .param p1, "ap"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 333
    sput-object p1, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->accessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 334
    return-void
.end method

.method private setEdit(Z)V
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 337
    sput-boolean p1, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->edit:Z

    .line 338
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    new-instance v1, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    sget-object v3, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->accessPoint:Lcom/android/settings/wifi/AccessPoint;

    sget-boolean v4, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->edit:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    return-object v1
.end method

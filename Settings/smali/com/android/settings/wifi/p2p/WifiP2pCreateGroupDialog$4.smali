.class Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$4;
.super Ljava/lang/Object;
.source "WifiP2pCreateGroupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->dismiss()V

    return-void
.end method

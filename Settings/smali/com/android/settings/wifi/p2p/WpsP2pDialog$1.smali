.class Lcom/android/settings/wifi/p2p/WpsP2pDialog$1;
.super Ljava/lang/Object;
.source "WpsP2pDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WpsP2pDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->dismiss()V

    .line 119
    return-void
.end method

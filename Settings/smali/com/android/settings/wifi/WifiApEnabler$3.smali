.class Lcom/android/settings/wifi/WifiApEnabler$3;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->showWPTurnoffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabledPost(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    .line 294
    return-void
.end method

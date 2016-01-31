.class Lcom/motorola/settings/extensions/InternetPrefSetting$1;
.super Ljava/lang/Object;
.source "InternetPrefSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/settings/extensions/InternetPrefSetting;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;


# direct methods
.method constructor <init>(Lcom/motorola/settings/extensions/InternetPrefSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$1;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$1;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    invoke-virtual {v0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

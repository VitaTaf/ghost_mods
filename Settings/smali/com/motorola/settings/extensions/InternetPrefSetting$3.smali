.class Lcom/motorola/settings/extensions/InternetPrefSetting$3;
.super Ljava/lang/Object;
.source "InternetPrefSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 68
    iput-object p1, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$3;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$3;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    # invokes: Lcom/motorola/settings/extensions/InternetPrefSetting;->openSettings()V
    invoke-static {v0}, Lcom/motorola/settings/extensions/InternetPrefSetting;->access$100(Lcom/motorola/settings/extensions/InternetPrefSetting;)V

    .line 71
    return-void
.end method

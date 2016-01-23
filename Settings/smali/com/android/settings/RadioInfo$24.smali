.class Lcom/android/settings/RadioInfo$24;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v0}, Lcom/android/settings/RadioInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "check_cfu_poweron"

    iget-object v0, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mCFUEnabled:Z
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1246
    iget-object v0, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->refreshCFU()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$4900(Lcom/android/settings/RadioInfo;)V

    .line 1247
    return-void

    .line 1245
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

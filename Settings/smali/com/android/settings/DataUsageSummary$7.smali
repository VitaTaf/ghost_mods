.class Lcom/android/settings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->handleMultiSimDataDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentSir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    # invokes: Lcom/android/settings/DataUsageSummary;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;Landroid/content/Context;I)V

    .line 1298
    return-void
.end method

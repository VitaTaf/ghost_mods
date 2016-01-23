.class Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;

.field final synthetic val$unit_in_bytes:J

.field final synthetic val$warningBytes:J


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;JLandroid/content/Context;JLcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2308
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-wide p3, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$unit_in_bytes:J

    iput-object p5, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$context:Landroid/content/Context;

    iput-wide p6, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$warningBytes:J

    iput-object p8, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p9, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p10, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2312
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2315
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$unit_in_bytes:J

    mul-long v0, v2, v4

    .line 2317
    .local v0, "bytes":J
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2318
    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$warningBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2319
    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$warningBytes:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2320
    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$warningBytes:J

    const-wide/32 v4, 0x100000

    add-long v0, v2, v4

    .line 2326
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 2327
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x0

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2328
    return-void
.end method

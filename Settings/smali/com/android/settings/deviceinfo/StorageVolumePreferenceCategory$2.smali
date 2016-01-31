.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;
.super Landroid/os/AsyncTask;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

.field final synthetic val$details:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->val$details:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    new-instance v1, Lcom/android/settings/EMMCInfoReader;

    invoke-direct {v1}, Lcom/android/settings/EMMCInfoReader;-><init>()V

    .local v1, "reader":Lcom/android/settings/EMMCInfoReader;
    invoke-virtual {v1}, Lcom/android/settings/EMMCInfoReader;->readEMMCInfo()V

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/settings/EMMCInfoReader;->getTotalSize()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcom/android/settings/Utils;->getReadableSize(ZJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "emmcInfo":Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "emmcInfo"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "emmcSize":J
    const-wide/32 v4, 0x40000000

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    # setter for: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J
    invoke-static {v4, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$002(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;J)J

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->val$details:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v4, v4, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    sub-long v0, v2, v4

    .local v0, "androidSize":J
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    # getter for: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemEmmc:Lcom/android/settings/deviceinfo/StorageItemPreference;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    # getter for: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAndroidOS:Lcom/android/settings/deviceinfo/StorageItemPreference;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$200(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v5

    # invokes: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    invoke-static {v4, v5, v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$300(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->val$details:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePrimaryDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$400(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.class public Lcom/android/systemui/qs/VzwConfirmationStubActivity;
.super Landroid/app/Activity;
.source "VzwConfirmationStubActivity.java"


# instance fields
.field private final ACTION_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

.field private final CLASSNAME_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

.field private final DATA_OFF_REQUEST_CODE:I

.field private final EXTRA_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

.field private final PACKAGE_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const-string v0, "com.motorola.vzw.phone.extensions.dataenabled.DATAENABLED_UNCHECKED"

    iput-object v0, p0, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->ACTION_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

    .line 16
    const-string v0, "com.motorola.vzw.phone.extensions"

    iput-object v0, p0, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->PACKAGE_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

    .line 17
    const-string v0, "com.motorola.vzw.phone.extensions.dataenabled.DataEnabled"

    iput-object v0, p0, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->CLASSNAME_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

    .line 18
    const-string v0, "launched_from_qs"

    iput-object v0, p0, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->EXTRA_SHOW_DATA_OFF_DIALOG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->DATA_OFF_REQUEST_CODE:I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->finish()V

    .line 42
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.vzw.phone.extensions.dataenabled.DATAENABLED_UNCHECKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.motorola.vzw.phone.extensions"

    const-string v2, "com.motorola.vzw.phone.extensions.dataenabled.DataEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "launched_from_qs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/VzwConfirmationStubActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    return-void
.end method

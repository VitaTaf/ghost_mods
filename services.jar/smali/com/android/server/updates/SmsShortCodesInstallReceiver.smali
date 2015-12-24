.class public Lcom/android/server/updates/SmsShortCodesInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SmsShortCodesInstallReceiver.java"


# static fields
.field private static final SMS_SHORT_CODES_INSTALLED:Ljava/lang/String; = "android.motorola.intent.action.SMS_SHORT_CODES_INSTALLED"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    const-string v0, "/data/misc/sms/"

    const-string v1, "codes"

    const-string v2, "metadata/"

    const-string v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.motorola.intent.action.SMS_SHORT_CODES_INSTALLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

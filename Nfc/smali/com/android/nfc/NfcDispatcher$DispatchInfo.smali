.class Lcom/android/nfc/NfcDispatcher$DispatchInfo;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatchInfo"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field public final intent:Landroid/content/Intent;

.field final ndefMimeType:Ljava/lang/String;

.field final ndefUri:Landroid/net/Uri;

.field final packageManager:Landroid/content/pm/PackageManager;

.field final rootIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.ID"

    invoke-virtual {p2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 139
    if-eqz p3, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 142
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    .line 148
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/nfc/NfcRootActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v1, "launchIntent"

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 154
    return-void

    .line 144
    :cond_0
    iput-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 145
    iput-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public setNdefIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 165
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTagIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setTechIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method tryStartActivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 199
    const/4 v1, 0x1

    .line 201
    :cond_0
    return v1
.end method

.method tryStartActivity(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intentToStart"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v2, "launchIntent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 210
    const/4 v1, 0x1

    .line 212
    :cond_0
    return v1
.end method

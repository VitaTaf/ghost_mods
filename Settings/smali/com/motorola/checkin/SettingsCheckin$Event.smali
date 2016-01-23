.class Lcom/motorola/checkin/SettingsCheckin$Event;
.super Ljava/lang/Object;
.source "SettingsCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/checkin/SettingsCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field mTag:Ljava/lang/String;

.field mValue:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/motorola/checkin/SettingsCheckin;


# direct methods
.method constructor <init>(Lcom/motorola/checkin/SettingsCheckin;Ljava/lang/String;)V
    .locals 4
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->this$0:Lcom/motorola/checkin/SettingsCheckin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mValue:Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "MOT_SIM_STATS"

    iput-object v1, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mTag:Ljava/lang/String;

    .line 308
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 309
    .local v0, "time":Ljava/lang/Long;
    const-string v1, "ID"

    invoke-virtual {p0, v1, p2}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    const-string v1, "ver"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    const-string v1, "time"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/motorola/checkin/SettingsCheckin$Event;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mValue:Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-string v3, ";"

    aput-object v3, v1, v2

    # invokes: Lcom/motorola/checkin/SettingsCheckin;->concat(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/motorola/checkin/SettingsCheckin;->access$400(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    return-void
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    const-string v0, "]"

    iget-object v1, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mValue:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mValue:Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/motorola/checkin/SettingsCheckin$Event;->mValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method logEvent(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x6

    .line 356
    invoke-virtual {p0}, Lcom/motorola/checkin/SettingsCheckin$Event;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "value":Ljava/lang/String;
    const-string v4, "[\\[\\]=;]"

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 363
    .local v7, "pairs":[Ljava/lang/String;
    array-length v4, v7

    if-le v4, v5, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/motorola/checkin/SettingsCheckin$Event;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v2, v7, v4

    .line 366
    .local v2, "segmentNameValue":Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v3, v7, v4

    .line 367
    .local v3, "versionValue":Ljava/lang/String;
    aget-object v4, v7, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 370
    .local v8, "timestampValue":Ljava/lang/Long;
    invoke-static {}, Lcom/motorola/checkin/CheckinEventWrapper;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    new-instance v0, Lcom/motorola/checkin/CheckinEventWrapper;

    invoke-direct {v0}, Lcom/motorola/checkin/CheckinEventWrapper;-><init>()V

    .line 374
    .local v0, "event":Lcom/motorola/checkin/CheckinEventWrapper;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/checkin/CheckinEventWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    const/4 v6, 0x7

    .local v6, "index":I
    :goto_0
    array-length v4, v7

    if-ge v6, v4, :cond_0

    .line 377
    aget-object v4, v7, v6

    add-int/lit8 v5, v6, 0x1

    aget-object v5, v7, v5

    invoke-virtual {v0, v4, v5}, Lcom/motorola/checkin/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/checkin/CheckinEventWrapper;->publish(Landroid/content/ContentResolver;)V

    .line 383
    .end local v0    # "event":Lcom/motorola/checkin/CheckinEventWrapper;
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "segmentNameValue":Ljava/lang/String;
    .end local v3    # "versionValue":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v8    # "timestampValue":Ljava/lang/Long;
    :cond_1
    return-void
.end method

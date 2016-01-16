.class public Lcom/android/nfc/cardemulation/RegisteredAidCache;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final POWER_STATE_ALL:I = 0x7

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "RegisteredAidCache"


# instance fields
.field final EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

.field final mAidCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHostAIDPowerState:I

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field final mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mSupportsPrefixes:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 75
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    .line 142
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    .line 152
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 156
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 158
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 159
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 161
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "RegisteredAidCache"

    const-string v1, "Controller supports AID prefix routing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    .line 165
    return-void
.end method

.method static isPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 700
    const-string v2, "    AID cache entries: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 702
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Service preferred by foreground app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Preferred payment service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 708
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v0, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 683
    .local v0, "category":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v2, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 684
    .local v2, "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" (category: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 688
    .local v1, "defaultComponent":Landroid/content/ComponentName;
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 689
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v6, "        "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 691
    const-string v6, "*DEFAULT* "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Description: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 685
    .end local v1    # "defaultComponent":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 696
    .restart local v1    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .locals 9
    .param p1, "prefixAid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 449
    new-instance v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;

    invoke-direct {v4, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 450
    .local v4, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "plainAid":Ljava/lang/String;
    const-string v5, "%-32s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x46

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "lastAidWithPrefix":Ljava/lang/String;
    const-string v5, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finding AIDs in range ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v8, v2, v8}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 457
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 458
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 460
    const-string v6, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " conflicts with prefix; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " adding handling services for conflict resolution."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 463
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_1
    return-object v4
.end method

.method findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 323
    .local v0, "defaultServiceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 324
    .local v2, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string v4, "payment"

    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 326
    .local v3, "serviceClaimsPaymentAid":Z
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_0

    .line 328
    :cond_1
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 330
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_0

    .line 333
    .end local v2    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v3    # "serviceClaimsPaymentAid":Z
    :cond_2
    return-object v0
.end method

.method generateAidCacheLocked()V
    .locals 14

    .prologue
    .line 470
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    .line 472
    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 474
    .local v1, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 475
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v10, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    .local v0, "aidToResolve":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 484
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_0
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateAidCacheLocked: starting with aid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 493
    new-instance v8, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    .local v8, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;

    move-result-object v7

    .line 500
    .local v7, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {p0, v8, v11}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v9

    .line 502
    .local v9, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11, v0, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_2

    .line 507
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 552
    .end local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_1
    :goto_1
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AIDs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " were resolved."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v1, v10}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 554
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 508
    .restart local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .restart local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_2
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 512
    const/4 v5, 0x0

    .line 514
    .local v5, "foundChildService":Z
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 515
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 517
    const-string v12, "RegisteredAidCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AID "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " shared with prefix; "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " adding all handling services."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 525
    .local v2, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    .line 526
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v11, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_3
    or-int/2addr v5, v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 533
    .end local v2    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_5
    if-nez v5, :cond_1

    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 534
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_1

    .line 544
    .end local v5    # "foundChildService":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_6
    const-string v11, "RegisteredAidCache"

    const-string v12, "Exact AID, resolving."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 547
    .local v3, "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    const/4 v12, 0x1

    invoke-virtual {p0, v3, v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 557
    .end local v0    # "aidToResolve":Ljava/lang/String;
    .end local v3    # "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v10    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 558
    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 389
    .local v8, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateServiceMap component: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getPrefixAids()Ljava/util/List;

    move-result-object v7

    .line 391
    .local v7, "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 393
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not valid."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_2
    const-string v11, "*"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v11

    if-nez v11, :cond_3

    .line 397
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Prefix AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ignored on device that doesn\'t support it."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    invoke-static {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "foundPrefix":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 403
    .local v6, "prefixAid":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 405
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring exact AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " because prefix AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is already registered"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v1, 0x1

    .line 411
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "prefixAid":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_1

    .line 415
    .end local v1    # "foundPrefix":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    invoke-direct {v9, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 416
    .local v9, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iput-object v8, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 417
    invoke-virtual {v8, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 419
    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "*"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 420
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 424
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 425
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 427
    .local v10, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 429
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .restart local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 436
    .end local v0    # "aid":Ljava/lang/String;
    .end local v7    # "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v9    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_9
    return-void
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v0

    .line 225
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 230
    :cond_1
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v2, :cond_2

    .line 231
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 233
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public onNfcDisabled()V
    .locals 2

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 669
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 671
    return-void

    .line 669
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNfcEnabled()V
    .locals 2

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 676
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 677
    monitor-exit v1

    .line 678
    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 652
    const-string v0, "RegisteredAidCache"

    const-string v1, "Preferred foreground service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 655
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 656
    monitor-exit v1

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 644
    const-string v0, "RegisteredAidCache"

    const-string v1, "Preferred payment service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 647
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 648
    monitor-exit v1

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRoutingTableChanged()V
    .locals 2

    .prologue
    .line 660
    const-string v0, "RegisteredAidCache"

    const-string v1, "onRoutingTableChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 663
    monitor-exit v1

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string v0, "RegisteredAidCache"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 635
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateServiceMapLocked(Ljava/util/List;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 640
    :goto_0
    monitor-exit v1

    .line 641
    return-void

    .line 638
    :cond_0
    const-string v0, "RegisteredAidCache"

    const-string v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 16
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 169
    :try_start_0
    const-string v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resolveAid: resolving AID "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_0

    .line 171
    const-string v12, "RegisteredAidCache"

    const-string v13, "AID selected with fewer than 5 bytes."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    monitor-exit v14

    .line 215
    :goto_0
    return-object v9

    .line 174
    :cond_0
    new-instance v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 175
    .local v9, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-eqz v12, :cond_7

    .line 179
    const/4 v12, 0x0

    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "shortestAidMatch":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "longestAidMatch":Ljava/lang/String;
    const-string v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Finding AID registrations in range ["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " - "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    const/4 v13, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v11, v13, v7, v15}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v8

    .line 187
    .local v8, "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    const-string v12, "other"

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 188
    invoke-interface {v8}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v6

    .line 190
    .local v6, "isPrefix":Z
    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "entryAid":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v6, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 193
    :cond_2
    const-string v13, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resolveAid: AID "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " matches."

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 195
    .local v3, "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v12, :cond_4

    .line 196
    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v12, :cond_3

    .line 199
    const-string v12, "RegisteredAidCache"

    const-string v13, "Different defaults for conflicting AIDs!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 202
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 204
    :cond_4
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 205
    .local v10, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 206
    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 216
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v2    # "entryAid":Ljava/lang/String;
    .end local v3    # "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isPrefix":Z
    .end local v7    # "longestAidMatch":Ljava/lang/String;
    .end local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v10    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v11    # "shortestAidMatch":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 190
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v6    # "isPrefix":Z
    .restart local v7    # "longestAidMatch":Ljava/lang/String;
    .restart local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .restart local v11    # "shortestAidMatch":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v2, v12

    goto :goto_1

    .line 212
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v6    # "isPrefix":Z
    .end local v7    # "longestAidMatch":Ljava/lang/String;
    .end local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v11    # "shortestAidMatch":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 214
    .restart local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_8
    const-string v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Resolved to: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 10
    .param p2, "makeSingleServiceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;Z)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "conflictingServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    const/4 v9, 0x0

    .line 254
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 255
    :cond_0
    const-string v6, "RegisteredAidCache"

    const-string v7, "resolveAidConflict: No services passed in."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v3, 0x0

    .line 312
    :goto_0
    return-object v3

    .line 258
    :cond_1
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v3, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 259
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v6, "other"

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v2, 0x0

    .line 263
    .local v2, "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 264
    .local v4, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string v6, "payment"

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 266
    .local v5, "serviceClaimsPaymentAid":Z
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 267
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    if-eqz v5, :cond_2

    .line 269
    const-string v6, "payment"

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 271
    :cond_2
    iget-object v1, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 272
    :cond_3
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 274
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v6, "payment"

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 276
    iget-object v2, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 278
    :cond_4
    if-eqz v5, :cond_5

    .line 282
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: (Ignoring handling service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " because it\'s not the payment default.)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    :cond_5
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    .end local v4    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v5    # "serviceClaimsPaymentAid":Z
    :cond_6
    if-eqz v1, :cond_7

    .line 293
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: DECISION: routing to foreground preferred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput-object v1, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_0

    .line 296
    :cond_7
    if-eqz v2, :cond_8

    .line 299
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: DECISION: routing to payment default default "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput-object v2, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_0

    .line 303
    :cond_8
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    if-eqz p2, :cond_9

    .line 304
    const-string v7, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: DECISION: making single handling service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " default."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_0

    .line 309
    :cond_9
    const-string v6, "RegisteredAidCache"

    const-string v7, "resolveAidLocked: DECISION: routing to all matching services"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .local p2, "conflictingServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    const/4 v5, 0x1

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v1

    .line 342
    .local v1, "prefixDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v0

    .line 349
    .local v0, "conflictingDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_0

    .line 350
    const-string v2, "RegisteredAidCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefix AID service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preference, ignoring conflicting AIDs."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 380
    :goto_0
    return-object v2

    .line 356
    :cond_0
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_2

    .line 358
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_1

    .line 360
    const-string v2, "RegisteredAidCache"

    const-string v3, "One of the conflicting AID registrations is foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    goto :goto_0

    .line 365
    :cond_1
    const-string v2, "RegisteredAidCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefix AID service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is payment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " default, ignoring conflicting AIDs."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    goto :goto_0

    .line 371
    :cond_2
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_4

    .line 373
    :cond_3
    const-string v2, "RegisteredAidCache"

    const-string v3, "One of the conflicting AID registrations is either payment default or foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    goto :goto_0

    .line 379
    :cond_4
    const-string v2, "RegisteredAidCache"

    const-string v3, "No service has preference, adding all."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    return v0
.end method

.method updateRoutingLocked()V
    .locals 14

    .prologue
    .line 561
    iget-boolean v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    if-nez v11, :cond_0

    .line 562
    const-string v11, "RegisteredAidCache"

    const-string v12, "Not updating routing table because NFC is off."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 568
    .local v9, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 569
    .local v2, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 570
    .local v1, "aid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 571
    .local v7, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    if-nez v11, :cond_2

    .line 572
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not routing AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on request."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 575
    :cond_2
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_1

    .line 577
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_7

    .line 580
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v10

    .line 581
    .local v10, "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 582
    .local v4, "isDefaultPayment":Z
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v5

    .line 584
    .local v5, "isOnHost":Z
    const/4 v0, 0x0

    .line 587
    .local v0, "VzwPowerstate":I
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getPowerState()I

    move-result v11

    and-int/lit8 v6, v11, 0x7

    .line 590
    .local v6, "powerstate":I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 591
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " set screen off enable for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    or-int/lit16 v11, v6, 0x80

    or-int/2addr v6, v11

    .line 594
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_5

    .line 596
    :cond_4
    or-int/lit8 v6, v6, 0x40

    .line 616
    :cond_5
    if-eqz v5, :cond_6

    const/4 v8, 0x0

    .line 617
    .local v8, "route":I
    :goto_2
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    const/4 v12, 0x1

    aput v6, v11, v12

    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 616
    .end local v8    # "route":I
    :cond_6
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v8

    goto :goto_2

    .line 618
    .end local v0    # "VzwPowerstate":I
    .end local v4    # "isDefaultPayment":Z
    .end local v5    # "isOnHost":Z
    .end local v6    # "powerstate":I
    .end local v10    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_7
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 621
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    aput v13, v11, v12

    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 622
    :cond_8
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 624
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    aput v13, v11, v12

    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 627
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v7    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_9
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v11, v9}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureRouting(Ljava/util/HashMap;)Z

    goto/16 :goto_0
.end method

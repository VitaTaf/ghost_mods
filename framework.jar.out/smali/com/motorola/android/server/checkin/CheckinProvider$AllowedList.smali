.class final Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;
.super Ljava/lang/Object;
.source "CheckinProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/checkin/CheckinProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllowedList"
.end annotation


# instance fields
.field private _isExclusive:Z

.field private final _string:Ljava/lang/String;

.field private volatile _values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_string:Ljava/lang/String;

    .line 315
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_values:Ljava/util/Set;

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, "s":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_isExclusive:Z

    .line 319
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_values:Ljava/util/Set;

    iget-boolean v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_isExclusive:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 343
    instance-of v0, p1, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_string:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_values:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_isExclusive:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, "==>isExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_isExclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, " values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_values:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$AllowedList;->_values:Ljava/util/Set;

    return-object v0
.end method

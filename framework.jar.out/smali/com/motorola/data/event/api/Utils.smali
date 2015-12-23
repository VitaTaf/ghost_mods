.class public final Lcom/motorola/data/event/api/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializationType(Lcom/motorola/data/event/api/IEvent$Serialization;Lcom/motorola/data/event/api/IEvent$Serialization;)Lcom/motorola/data/event/api/IEvent$Serialization;
    .locals 3
    .param p0, "currentSerialization"    # Lcom/motorola/data/event/api/IEvent$Serialization;
    .param p1, "requestedSerializationType"    # Lcom/motorola/data/event/api/IEvent$Serialization;

    .prologue
    .line 27
    sget-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    if-ne p0, v0, :cond_0

    .line 34
    .end local p1    # "requestedSerializationType":Lcom/motorola/data/event/api/IEvent$Serialization;
    :goto_0
    return-object p1

    .line 29
    .restart local p1    # "requestedSerializationType":Lcom/motorola/data/event/api/IEvent$Serialization;
    :cond_0
    if-eq p1, p0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes already requested to be serialized as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/data/event/api/IEvent$Serialization;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cannot change serialization to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/data/event/api/IEvent$Serialization;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object p1, p0

    .line 34
    goto :goto_0
.end method

.method public static getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 126
    check-cast p0, Ljava/lang/String;

    .line 144
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object p0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 128
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 129
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 130
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 131
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 132
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 133
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 134
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 135
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v1, p0, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 136
    check-cast p0, Ljava/util/ArrayList;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/motorola/data/event/api/Utils;->parseListAttributes(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 137
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v1, p0, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_6

    .line 138
    check-cast p0, Ljava/util/LinkedHashMap;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/motorola/data/event/api/Utils;->parseMapAttributes(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 141
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Event: Unknown object type provided as input to setValue for Event"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static parseListAttributes(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "listValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v2, "stringValue":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/motorola/data/event/api/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "str":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Could not convert the input Object to string value for attribute "

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v1    # "str":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 67
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "stringValue":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_3
    const-string v4, ""

    goto :goto_1
.end method

.method public static parseMapAttributes(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "mapValues":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v3, "stringValue":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 93
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/motorola/data/event/api/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "str":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 95
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Could not convert the input Object to string value for attribute "

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringValue":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

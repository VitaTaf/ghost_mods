.class public final Lcom/motorola/data/event/api/Segment;
.super Ljava/lang/Object;
.source "Segment.java"

# interfaces
.implements Lcom/motorola/data/event/api/IEvent$ISegment;


# instance fields
.field private _positionedSegAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _segNVAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _segSerializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

.field private _segmentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "segmentName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segmentName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Segment;->_positionedSegAttributes:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segNVAttributes:Ljava/util/Map;

    sget-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    iput-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segSerializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segment:Segment: segmentName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/motorola/data/event/api/Segment;->_segmentName:Ljava/lang/String;

    return-void
.end method

.method private setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segSerializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->NAME_VALUE_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-static {v0, v1}, Lcom/motorola/data/event/api/Utils;->getSerializationType(Lcom/motorola/data/event/api/IEvent$Serialization;Lcom/motorola/data/event/api/IEvent$Serialization;)Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segSerializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segment:setValue: name or value in name-value pair cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segNVAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPositionAttribute(ILjava/lang/Object;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v3, p0, Lcom/motorola/data/event/api/Segment;->_segSerializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    sget-object v4, Lcom/motorola/data/event/api/IEvent$Serialization;->POSITION_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-static {v3, v4}, Lcom/motorola/data/event/api/Utils;->getSerializationType(Lcom/motorola/data/event/api/IEvent$Serialization;Lcom/motorola/data/event/api/IEvent$Serialization;)Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/data/event/api/Segment;->_segSerializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Segment:setValue: value in name-value pair cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Segment:setValue: position to be inserted in has to be 1 or higher"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    add-int/lit8 v2, p1, -0x1

    .local v2, "pos":I
    iget-object v3, p0, Lcom/motorola/data/event/api/Segment;->_positionedSegAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/motorola/data/event/api/Segment;->_positionedSegAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "numInsert":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    iget-object v3, p0, Lcom/motorola/data/event/api/Segment;->_positionedSegAttributes:Ljava/util/List;

    const-string v4, ""

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numInsert":I
    :cond_2
    iget-object v3, p0, Lcom/motorola/data/event/api/Segment;->_positionedSegAttributes:Ljava/util/List;

    invoke-interface {v3, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getNVAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segNVAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getPositionBasedAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/data/event/api/Segment;->_positionedSegAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/motorola/data/event/api/IEvent$Serialization;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/data/event/api/Segment;->_segSerializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    return-object v0
.end method

.method public setValue(ID)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setPositionAttribute(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setPositionAttribute(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setPositionAttribute(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setPositionAttribute(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setPositionAttribute(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(ILjava/util/HashMap;)V
    .locals 0
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setPositionAttribute(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setPositionAttribute(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Segment;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

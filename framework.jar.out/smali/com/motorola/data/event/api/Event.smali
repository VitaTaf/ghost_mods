.class public abstract Lcom/motorola/data/event/api/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/motorola/data/event/api/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/data/event/api/Event$1;
    }
.end annotation


# instance fields
.field private _apkName:Ljava/lang/String;

.field private _apkVerCode:Ljava/lang/String;

.field private _eventNVAttributes:Ljava/util/Map;
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

.field private _eventName:Ljava/lang/String;

.field private _eventSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/data/event/api/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private _headerAttributes:Ljava/util/Map;
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

.field private _positionedEventAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

.field private _tag:Ljava/lang/String;

.field private _timestamp:J

.field private _timezoneoffset:J

.field private _userid:Ljava/lang/String;

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_headerAttributes:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventNVAttributes:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventSegments:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 56
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:Event: tag, event type name, version cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    .line 65
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timezoneoffset:J

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_apkName:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_apkVerCode:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_headerAttributes:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventNVAttributes:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventSegments:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 88
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:Event: tag, event type name, version cannot be empty and timestamp value cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iput-object p1, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 97
    iput-wide p4, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    .line 98
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timezoneoffset:J

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_apkName:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_apkVerCode:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .param p6, "userid"    # Ljava/lang/String;
    .param p7, "apkName"    # Ljava/lang/String;
    .param p8, "apkVerCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_headerAttributes:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventNVAttributes:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventSegments:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 166
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:Event: tag, event type name, version,apkName or apkVerCode  string cannot be empty and timestamp value cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    if-nez p6, :cond_2

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    .line 178
    :goto_0
    iput-object p1, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 181
    iput-wide p4, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    .line 182
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timezoneoffset:J

    .line 183
    iput-object p7, p0, Lcom/motorola/data/event/api/Event;->_apkName:Ljava/lang/String;

    .line 184
    iput-object p8, p0, Lcom/motorola/data/event/api/Event;->_apkVerCode:Ljava/lang/String;

    .line 185
    return-void

    .line 176
    :cond_2
    iput-object p6, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "userid"    # Ljava/lang/String;
    .param p5, "apkName"    # Ljava/lang/String;
    .param p6, "apkVerCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_headerAttributes:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventNVAttributes:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventSegments:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 124
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:Event: tag, event type name, version,apkName or apkVerCode string cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    if-nez p4, :cond_2

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    .line 135
    :goto_0
    iput-object p1, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    .line 139
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timezoneoffset:J

    .line 140
    iput-object p5, p0, Lcom/motorola/data/event/api/Event;->_apkName:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Lcom/motorola/data/event/api/Event;->_apkVerCode:Ljava/lang/String;

    .line 142
    return-void

    .line 133
    :cond_2
    iput-object p4, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    goto :goto_0
.end method

.method private setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->NAME_VALUE_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-static {v0, v1}, Lcom/motorola/data/event/api/Utils;->getSerializationType(Lcom/motorola/data/event/api/IEvent$Serialization;Lcom/motorola/data/event/api/IEvent$Serialization;)Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    .line 528
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:setValue: name or value in name-value pair cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventNVAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    return-void
.end method

.method private setPositionAttribute(ILjava/lang/Object;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 660
    iget-object v3, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    sget-object v4, Lcom/motorola/data/event/api/IEvent$Serialization;->POSITION_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-static {v3, v4}, Lcom/motorola/data/event/api/Utils;->getSerializationType(Lcom/motorola/data/event/api/IEvent$Serialization;Lcom/motorola/data/event/api/IEvent$Serialization;)Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    .line 663
    if-nez p2, :cond_0

    .line 664
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Event:setValue: value for position based attribute cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 667
    :cond_0
    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    .line 668
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Event:setValue: position to be inserted in has to be 1 or higher"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 673
    :cond_1
    add-int/lit8 v2, p1, -0x1

    .line 677
    .local v2, "pos":I
    iget-object v3, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 680
    iget-object v3, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 681
    .local v1, "numInsert":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 682
    iget-object v3, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    const-string v4, ""

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    .end local v1    # "numInsert":I
    :cond_2
    iget-object v3, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    invoke-interface {v3, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 686
    return-void
.end method

.method private setSerializedSegments(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "serializedValue"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/data/event/api/Segment;

    .line 797
    .local v3, "segment":Lcom/motorola/data/event/api/Segment;
    sget-object v6, Lcom/motorola/data/event/api/Event$1;->$SwitchMap$com$motorola$data$event$api$IEvent$Serialization:[I

    invoke-virtual {v3}, Lcom/motorola/data/event/api/Segment;->getSerializationType()Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/data/event/api/IEvent$Serialization;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 843
    :cond_0
    :pswitch_0
    const-string v6, "]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 801
    :pswitch_1
    const-string v6, "["

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/motorola/data/event/api/Segment;->getSegmentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v3}, Lcom/motorola/data/event/api/Segment;->getNVAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 806
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/data/event/api/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, "stringValue":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 810
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event:getSerializedSegment Could not convert the input Object to string value for attribute: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 815
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 820
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "stringValue":Ljava/lang/String;
    :pswitch_2
    const-string v6, "["

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/motorola/data/event/api/Segment;->getSegmentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v3}, Lcom/motorola/data/event/api/Segment;->getPositionBasedAttributes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 824
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 825
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 827
    :cond_2
    invoke-static {v5}, Lcom/motorola/data/event/api/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 830
    .restart local v4    # "stringValue":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 831
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Event:getSerializedSegment Could not convert the input Object to string value for attribute at position:"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 833
    :cond_3
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 834
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 836
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 845
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "segment":Lcom/motorola/data/event/api/Segment;
    .end local v4    # "stringValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_5
    return-object p1

    .line 797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addSegment(Lcom/motorola/data/event/api/Segment;)V
    .locals 2
    .param p1, "segment"    # Lcom/motorola/data/event/api/Segment;

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:addSegment: segment  cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    return-void
.end method

.method public getApkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getApkVerCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_apkVerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderAttributes()Ljava/util/Map;
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
    .line 305
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_headerAttributes:Ljava/util/Map;

    return-object v0
.end method

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
    .line 273
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventNVAttributes:Ljava/util/Map;

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
    .line 284
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_positionedEventAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/data/event/api/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_eventSegments:Ljava/util/List;

    return-object v0
.end method

.method public getSerializationType()Lcom/motorola/data/event/api/IEvent$Serialization;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_serializationType:Lcom/motorola/data/event/api/IEvent$Serialization;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timestamp:J

    return-wide v0
.end method

.method public getTimezoneOffset()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/motorola/data/event/api/Event;->_timezoneoffset:J

    return-wide v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_version:Ljava/lang/String;

    return-object v0
.end method

.method public serializeEvent()Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v2, "serializedValue":Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string/jumbo v5, "time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string/jumbo v5, "timezoneoffset="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getTimezoneOffset()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string/jumbo v5, "userid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getUserid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v5, "apkname="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/data/event/api/Event;->_apkName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v5, "apkvercode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/data/event/api/Event;->_apkVerCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getHeaderAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 724
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getHeaderAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 726
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/data/event/api/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "stringValue":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 730
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event:serializeEvent Could not convert the input Object to string value for header attribute: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 735
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 740
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringValue":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/motorola/data/event/api/Event$1;->$SwitchMap$com$motorola$data$event$api$IEvent$Serialization:[I

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getSerializationType()Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/data/event/api/IEvent$Serialization;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 779
    :cond_2
    :pswitch_0
    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-direct {p0, v2}, Lcom/motorola/data/event/api/Event;->setSerializedSegments(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 784
    return-object v2

    .line 744
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getNVAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 745
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/data/event/api/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 748
    .restart local v3    # "stringValue":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 749
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event:serializeEvent Could not convert the input Object to string value for attribute: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 754
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 759
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringValue":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getPositionBasedAttributes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 760
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 761
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 763
    :cond_4
    invoke-static {v4}, Lcom/motorola/data/event/api/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 765
    .restart local v3    # "stringValue":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 766
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Event:serializeEvent Could not convert the input Object to string value for attribute at position:"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 768
    :cond_5
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 769
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 771
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setApkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/motorola/data/event/api/Event;->_apkName:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setApkVerCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkVerCode"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/motorola/data/event/api/Event;->_apkVerCode:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setHeaderAttribute(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 390
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:setHeaderAttribute: Header name or value field cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_headerAttributes:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method public setHeaderAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 370
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:setHeaderAttribute: Header name or value field cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/motorola/data/event/api/Event;->_headerAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method public setTimezoneOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 314
    iput-wide p1, p0, Lcom/motorola/data/event/api/Event;->_timezoneoffset:J

    .line 315
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/motorola/data/event/api/Event;->_userid:Ljava/lang/String;

    .line 325
    return-void
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
    .line 601
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setPositionAttribute(ILjava/lang/Object;)V

    .line 602
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
    .line 550
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setPositionAttribute(ILjava/lang/Object;)V

    .line 551
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
    .line 567
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setPositionAttribute(ILjava/lang/Object;)V

    .line 568
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
    .line 584
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Event;->setPositionAttribute(ILjava/lang/Object;)V

    .line 585
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
    .line 636
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Event;->setPositionAttribute(ILjava/lang/Object;)V

    .line 637
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
    .line 656
    .local p2, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Event;->setPositionAttribute(ILjava/lang/Object;)V

    .line 657
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
    .line 618
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setPositionAttribute(ILjava/lang/Object;)V

    .line 619
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
    .line 466
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
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
    .line 430
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
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
    .line 412
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
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
    .line 448
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Event;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
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
    .line 501
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Event;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
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
    .line 521
    .local p2, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/data/event/api/Event;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
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
    .line 484
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/data/event/api/Event;->setNVAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    return-void
.end method

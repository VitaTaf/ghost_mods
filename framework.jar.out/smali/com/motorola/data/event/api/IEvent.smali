.class public interface abstract Lcom/motorola/data/event/api/IEvent;
.super Ljava/lang/Object;
.source "IEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/data/event/api/IEvent$ISegment;,
        Lcom/motorola/data/event/api/IEvent$Serialization;
    }
.end annotation


# virtual methods
.method public abstract addSegment(Lcom/motorola/data/event/api/Segment;)V
.end method

.method public abstract getApkName()Ljava/lang/String;
.end method

.method public abstract getApkVerCode()Ljava/lang/String;
.end method

.method public abstract getEventName()Ljava/lang/String;
.end method

.method public abstract getHeaderAttributes()Ljava/util/Map;
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
.end method

.method public abstract getNVAttributes()Ljava/util/Map;
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
.end method

.method public abstract getPositionBasedAttributes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/data/event/api/Segment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializationType()Lcom/motorola/data/event/api/IEvent$Serialization;
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTimezoneOffset()J
.end method

.method public abstract getUserid()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract publish(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setApkName(Ljava/lang/String;)V
.end method

.method public abstract setApkVerCode(Ljava/lang/String;)V
.end method

.method public abstract setHeaderAttribute(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setHeaderAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setTimezoneOffset(J)V
.end method

.method public abstract setUserid(Ljava/lang/String;)V
.end method

.method public abstract setValue(ID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(ILjava/util/ArrayList;)V
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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(ILjava/util/HashMap;)V
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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/util/ArrayList;)V
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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/util/HashMap;)V
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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

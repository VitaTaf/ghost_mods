.class synthetic Lcom/motorola/data/event/api/Event$1;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/data/event/api/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$motorola$data$event$api$IEvent$Serialization:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/motorola/data/event/api/IEvent$Serialization;->values()[Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/data/event/api/Event$1;->$SwitchMap$com$motorola$data$event$api$IEvent$Serialization:[I

    :try_start_0
    sget-object v0, Lcom/motorola/data/event/api/Event$1;->$SwitchMap$com$motorola$data$event$api$IEvent$Serialization:[I

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-virtual {v1}, Lcom/motorola/data/event/api/IEvent$Serialization;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/data/event/api/Event$1;->$SwitchMap$com$motorola$data$event$api$IEvent$Serialization:[I

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->NAME_VALUE_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-virtual {v1}, Lcom/motorola/data/event/api/IEvent$Serialization;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/motorola/data/event/api/Event$1;->$SwitchMap$com$motorola$data$event$api$IEvent$Serialization:[I

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->POSITION_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-virtual {v1}, Lcom/motorola/data/event/api/IEvent$Serialization;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

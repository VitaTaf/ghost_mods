.class public final enum Lcom/motorola/data/event/api/IEvent$Serialization;
.super Ljava/lang/Enum;
.source "IEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/data/event/api/IEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Serialization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/data/event/api/IEvent$Serialization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/data/event/api/IEvent$Serialization;

.field public static final enum NAME_VALUE_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

.field public static final enum NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

.field public static final enum POSITION_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/motorola/data/event/api/IEvent$Serialization;

    const-string v1, "NOT_INTIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/motorola/data/event/api/IEvent$Serialization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    new-instance v0, Lcom/motorola/data/event/api/IEvent$Serialization;

    const-string v1, "POSITION_BASED"

    invoke-direct {v0, v1, v3}, Lcom/motorola/data/event/api/IEvent$Serialization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->POSITION_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    new-instance v0, Lcom/motorola/data/event/api/IEvent$Serialization;

    const-string v1, "NAME_VALUE_BASED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/data/event/api/IEvent$Serialization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->NAME_VALUE_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/data/event/api/IEvent$Serialization;

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->NOT_INTIALIZED:Lcom/motorola/data/event/api/IEvent$Serialization;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->POSITION_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/data/event/api/IEvent$Serialization;->NAME_VALUE_BASED:Lcom/motorola/data/event/api/IEvent$Serialization;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->$VALUES:[Lcom/motorola/data/event/api/IEvent$Serialization;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/data/event/api/IEvent$Serialization;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/data/event/api/IEvent$Serialization;

    return-object v0
.end method

.method public static values()[Lcom/motorola/data/event/api/IEvent$Serialization;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/data/event/api/IEvent$Serialization;->$VALUES:[Lcom/motorola/data/event/api/IEvent$Serialization;

    invoke-virtual {v0}, [Lcom/motorola/data/event/api/IEvent$Serialization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/data/event/api/IEvent$Serialization;

    return-object v0
.end method
